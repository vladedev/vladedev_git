#include "s21_cat.h"

int main(int argc, char *argv[]) {
  struct flags flags_init = {0, 0, 0, 0, 0, 0};

  flags_parser(argc, argv, &flags_init);

  for (int i = optind; i < argc; i++) {
    FILE *file = fopen(argv[i], "r");
    if (file == NULL) {
      fprintf(stderr, "No such file or directory '%s'\n", argv[i]);
    } else {
      process_file(file, &flags_init);
      fclose(file);
    }
  }
  return 0;
}

void flags_parser(int argc, char *argv[], struct flags *flags) {
  int ch = 0;
  static struct option const long_options[] = {
      {"number-nonblank", 0, NULL, 'b'},
      {"number", 0, NULL, 'n'},
      {"squeeze-blank", 0, NULL, 's'}};
  while ((ch = getopt_long(argc, argv, "benstvTE", long_options, NULL)) != -1) {
    switch (ch) {
      case 'b':
        flags->b_flag = 1;
        flags->n_flag = 0;
        break;
      case 'e':
        flags->e_flag = 1;
        flags->v_flag = 1;
        break;
      case 'n':
        flags->n_flag = 1;
        break;
      case 's':
        flags->s_flag = 1;
        break;
      case 't':
        flags->t_flag = 1;
        flags->v_flag = 1;
        break;
      case 'v':
        flags->v_flag = 1;
        break;
      case 'T':
        flags->t_flag = 1;
        break;
      case 'E':
        flags->e_flag = 1;
        break;
    }
  }
}

void process_file(FILE *file, struct flags *flags) {
  int c = 0;
  int prev_c = '\n';
  int line = 1;
  int line_counter = 0;
  int print_char = 1;

  while ((c = fgetc(file)) != EOF) {
    if ((flags->s_flag == 1) && (c == '\n') && (prev_c == '\n')) {
      line_counter++;
      if ((line_counter >= 2)) {
        print_char = 0;
      } else {
        print_char = 1;
      }
    } else {
      line_counter = 0;
      print_char = 1;
    }
    if (((flags->b_flag == 1) || (flags->n_flag == 1)) && (prev_c == '\n') &&
        (print_char == 1)) {
      if ((flags->b_flag == 1) && (c != '\n')) {
        printf("%6d\t", line++);
      } else if ((flags->n_flag == 1) && (flags->b_flag == 0)) {
        printf("%6d\t", line++);
      }
    }
    if (print_char == 1) {
      if ((flags->v_flag == 1) && (c != '\n') && (c != '\t')) {
        if (c < 32) {
          printf("^%c", c + 64);
        } else if (c == 127) {
          printf("^?");
        } else {
          putchar(c);
        }
      } else if ((flags->t_flag == 1) && (c == '\t')) {
        printf("^I");
      } else if ((flags->e_flag == 1) && (c == '\n')) {
        printf("$\n");
      } else {
        putchar(c);
      }
    }
    prev_c = c;
  }
}