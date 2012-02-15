#define add(a,b)	(a + b)
#define Checked 0

int main()
{
	int c = add(2,3);
#if Checked
	int checked = 1;
#endif
	return 0;
}
