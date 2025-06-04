#include <getopt.h>
#include <regex.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct flags {
  int e_flag;
  int i_flag;
  int v_flag;
  int c_flag;
  int l_flag;
  int n_flag;
  int s_flag;
};

void process_file(FILE *file, const char *filename, regex_t *regex,
                  struct flags *flags, int file_count);
void flags_parser(int argc, char *argv[], struct flags *flags);