#include "s21_grep.h"

int main(int argc, char *argv[]) {
  struct flags flags_init = {0, 0, 0, 0, 0, 0, 0};
  char *pattern = NULL;

  flags_parser(argc, argv, &flags_init);
  pattern = argv[optind];

  regex_t regex;
  int flags = REG_EXTENDED;
  if (flags_init.i_flag == 1) {
    flags = REG_ICASE;
  }
  if (regcomp(&regex, pattern, flags) != 0) {
    fprintf(stderr, "Invalid regex pattern\n");
  }

  int file_count = argc - optind - 1;

  for (int i = optind + 1; i < argc; i++) {
    FILE *file = fopen(argv[i], "r");
    if (file == NULL) {
      if (flags_init.s_flag == 0) {
        fprintf(stderr, "grep: %s: No such file or directory\n", argv[i]);
      }
    } else {
      process_file(file, argv[i], &regex, &flags_init, file_count);
      fclose(file);
    }
  }
  regfree(&regex);
  return 0;
}

void flags_parser(int argc, char *argv[], struct flags *flags) {
  int ch = 0;

  while ((ch = getopt(argc, argv, "eivclns")) != -1) {
    switch (ch) {
      case 'e':
        flags->e_flag = 1;
        break;
      case 'i':
        flags->i_flag = 1;
        break;
      case 'v':
        flags->v_flag = 1;
        break;
      case 'c':
        flags->c_flag = 1;
        break;
      case 'l':
        flags->l_flag = 1;
        break;
      case 'n':
        flags->n_flag = 1;
        break;
      case 's':
        flags->s_flag = 1;
        break;
    }
  }
}

void process_file(FILE *file, const char *filename, regex_t *regex,
                  struct flags *flags, int file_count) {
  char *line = NULL;
  size_t len = 0;
  int read = 0;
  int line_number = 0;
  int match_count = 0;
  int has_match = 0;

  while ((read = getline(&line, &len, file)) != -1) {
    line_number++;
    int match = (regexec(regex, line, 0, NULL, 0) == 0);
    if (flags->v_flag == 1) {
      match = !match;
    }

    if (match) {
      has_match = 1;
      match_count++;
      if ((flags->c_flag == 0) && (flags->l_flag == 0)) {
        if (file_count > 1) {
          printf("%s:", filename);
        }
        if (flags->n_flag == 1) {
          printf("%d:", line_number);
        }
        printf("%s", line);
        size_t line_len = strlen(line);
        if (line_len > 0 && line[line_len - 1] != '\n') {
          printf("\n");
        }
      }
    }
  }
  if (flags->c_flag == 1) {
    if (file_count > 1) {
      printf("%s:", filename);
    }
    printf("%d\n", match_count);
  }
  if ((flags->l_flag == 1) && (has_match == 1)) {
    printf("%s\n", filename);
  }
  if (line != NULL) {
    free(line);
  }
}