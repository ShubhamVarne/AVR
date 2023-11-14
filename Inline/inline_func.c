static inline void add(int num1, int num2, int* p_total)
{
	*p_total = num1 + num2;
}

int main(void)
{
	int a = 100, b = 200, total = 0;
	add(a, b, &total);
	return (0);
}