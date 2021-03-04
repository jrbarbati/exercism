#if !defined(GRADE_SCHOOL_H)
#define GRADE_SCHOOL_H

#include <map>
#include <vector>
#include <string>

namespace grade_school 
{
	class school 
	{
	private:
		std::map<int, std::vector<std::string>> r;

	public:
		void add(std::string name, int grade);
		const std::map<int, std::vector<std::string>> roster();
		std::vector<std::string> grade(int grade);
	};
}  // namespace grade_school

#endif // GRADE_SCHOOL_H