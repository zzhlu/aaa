<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>学生学情问卷、评教调查表</title>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./css/common.css">
    <script src="./js/student_research.js"></script>	
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <form action="StudentResearch" method="post" name="studentResearch">
                <div class="page-header">
                    <h2 class="text-center">学生学情问卷、评教调查表</h2>
                    <table class="table">
                        <tr>
                            <td>
                                <label for="courseName">课程名称：</label>
                                <input type="text" id="courseName" name="courseName">
                            </td>
                            <td>
                                <label for="className">班级：</label>
                                <input type="text" id="className" name="className">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="teacherName">授课教师：</label>
                                <input type="text" id="teacherName" name="teacherName">
                            </td>
                            <td>
                                <label for="instituteName">授课教师所在学院：</label>
                                <input type="text" id="instituteName" name="instituteName">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="courseProperty">课程性质：</label>
                                <select id="courseProperty" name="courseProperty">
                                    <option></option>
                                    <option value="essential">必修</option>
                                    <option value="selectivity">选修</option>
                                    <option value="quality">素拓</option>
                                </select>
                            </td>
                            <td></td>
                        </tr>
                    </table>
                </div>
                <div class="form-group">
                    <table class="table table-hover">
                        <tr>
                            <td>
                                <label for="question1">
                                    1、你是否明确本课程的学习目标，以及在专业培养中的地位和作用？
                                </label>
                            </td>
                            <td>
                                <select id="question1" name="question1">
                                    <option></option>
                                    <option value="yes">明确</option>
                                    <option value="basic">基本明确</option>
                                    <option value="no">不明确</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="question2">
                                    2、你每周在本课程上课后所花费的平均学习时间：
                                </label>
                            </td>
                            <td>
                                <input type="text" id="question2" name="question2">小时
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="question3">
                                    3、本课程布置的课后作业量：
                                </label>
                            </td>
                            <td>
                                <select id="question3" name="question3">
                                    <option></option>
                                    <option value="more">太多</option>
                                    <option value="fit">合适</option>
                                    <option value="little">很少</option>
                                    <option value="no">没有</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="question4">
                                    4、你完成本课程的课后作业是否有困难？
                                </label>
                            </td>
                            <td>
                                <select id="question4" name="question4">
                                    <option></option>
                                    <option value="no">没有困难，可以独立完成</option>
                                    <option value="basic">基本可以完成</option>
                                    <option value="yes">有困难，较难完成</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="question5">
                                    5、你遇到学习上的问题如何解决：
                                </label>
                            </td>
                            <td>
                                <select id="question5" name="question5">
                                    <option></option>
                                    <option value="discussion">与同学讨论</option>
                                    <option value="book">看参考书</option>
                                    <option value="network">在网上查阅资料</option>
                                    <option value="doubt">找老师答疑</option>
                                    <option value="else">其他</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="question6">
                                    6、你对该课程是否有兴趣？
                                </label>
                            </td>
                            <td>
                                <select id="question6" name="question6">
                                    <option></option>
                                    <option value="yes">有兴趣</option>
                                    <option value="basic">比较有兴趣</option>
                                    <option value="no">没有兴趣</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="question7">
                                    7、你对该课程的兴趣来自：
                                </label>
                            </td>
                            <td>
                                <select id="question7" name="question7">
                                    <option></option>
                                    <option value="like">对专业的渴望</option>
                                    <option value="good">老师讲得好</option>
                                    <option value="important">觉得重要</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="question8">
                                    8、你是否阅读与本课程相关的参考书？
                                </label>
                            </td>
                            <td>
                                <select id="question8" name="question8">
                                    <option></option>
                                    <option value="yes">阅读</option>
                                    <option value="some">阅读一些</option>
                                    <option value="no">没有阅读</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="question9">
                                    9、你是否满意老师的课堂讲授？
                                </label>
                            </td>
                            <td>
                                <select id="question9" name="question9">
                                    <option></option>
                                    <option value="yes">满意</option>
                                    <option value="basic">基本满意</option>
                                    <option value="no">不满意</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="question10">
                                    10、通过该课程的学习，你的收获？
                                </label>
                            </td>
                            <td>
                                <select id="question10" name="question10">
                                    <option></option>
                                    <option value="more">很大</option>
                                    <option value="some">有一些</option>
                                    <option value="no">基本无</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <label for="question11">
                                    11、你对该课程的教学有何建议？
                                </label>
                                <textarea name="suggest" id="question11" cols="130" rows="5"
                                          placeholder="请在此处填写您的建议"></textarea>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="form-group">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th class="text-center">序号</th>
                            <th class="text-center">评教项目</th>
                            <th>评价等级</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="text-center">1</td>
                            <td class="text-center">
                                <label for="question12">
                                    教书育人，为人师表，遵纪守时，严格要求学生
                                </label>
                            </td>
                            <td>
                                <select id="question12" name="question12">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                    <option value="bad">差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">2</td>
                            <td class="text-center">
                                <label for="question13">
                                    备课认真，不断充实教学内容，课堂内容丰富
                                </label>
                            </td>
                            <td>
                                <select id="question13" name="question13">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                    <option value="bad">差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">3</td>
                            <td class="text-center">
                                <label for="question14">
                                    认真批改作业、辅导、答疑
                                </label>
                            </td>
                            <td>
                                <select id="question14" name="question14">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                    <option value="bad">差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">4</td>
                            <td class="text-center">
                                <label for="question15">
                                    深入学生，听取建议，改进教学
                                </label>
                            </td>
                            <td>
                                <select id="question15" name="question15">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                    <option value="bad">差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">5</td>
                            <td class="text-center">
                                <label for="question16">
                                    调动学生积极性，课堂气氛活跃
                                </label>
                            </td>
                            <td>
                                <select id="question16" name="question16">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                    <option value="bad">差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">6</td>
                            <td class="text-center">
                                <label for="question17">
                                    语言生动、精炼，板书工整、规范
                                </label>
                            </td>
                            <td>
                                <select id="question17" name="question17">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                    <option value="bad">差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">7</td>
                            <td class="text-center">
                                <label for="question18">
                                    注重学生能力的培养（例如：语言、协作等）
                                </label>
                            </td>
                            <td>
                                <select id="question18" name="question18">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                    <option value="bad">差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">8</td>
                            <td class="text-center">
                                <label for="question19">
                                    充分发挥现代教学手段的作用
                                </label>
                            </td>
                            <td>
                                <select id="question19" name="question19">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                    <option value="bad">差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">9</td>
                            <td class="text-center">
                                <label for="question20">
                                    讲课条理清楚，重点突出，富有启发性
                                </label>
                            </td>
                            <td>
                                <select id="question20" name="question20">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                    <option value="bad">差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">10</td>
                            <td class="text-center">
                                <label for="question21">
                                    教、练结合，课上收获大，学习有进步
                                </label>
                            </td>
                            <td>
                                <select id="question21" name="question21">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                    <option value="bad">差</option>
                                </select>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <input type="reset" id="reset" name="reset" value="重置" class="btn btn-primary">
                <input type="submit" id="submit" name="submit" onclick="return check(this);" value="提交" class="btn btn-primary">
            </form>
        </div>
    </div>
</div>
</body>
</html>