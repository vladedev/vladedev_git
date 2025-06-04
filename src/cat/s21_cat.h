#include <getopt.h>
#include <stdio.h>

struct flags {
  int b_flag;
  int e_flag;
  int n_flag;
  int s_flag;
  int t_flag;
  int v_flag;
};

void flags_parser(int argc, char *argv[], struct flags *flags);
void process_file(FILE *file, struct flags *flags);