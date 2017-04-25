<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>教学督导听课记录表</title>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./css/common.css">
    <script src="./js/teacher_class_research.js"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <form action="TeaClassResearch" method="post" name="teaClassResearch">
                <div class="page-header">
                    <h2 class="text-center">教学督导听课记录表</h2>
                    <table class="table">
                        <tr>
                            <td>
                                <label for="courseName">课程名称：</label>
                                <input type="text" id="courseName" name="courseName">
                            </td>
                            <td>
                                <label for="majorClass">专业班级：</label>
                                <input type="text" id="majorClass" name="majorClass">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="teacherName">授课教师：</label>
                                <input type="text" id="teacherName" name="teacherName">
                            </td>
                            <td>
                                <label for="instituteName">授课教师所属院、部：</label>
                                <input type="text" id="instituteName" name="instituteName">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="duty">授课教师职称：</label>
                                <input type="text" id="duty" name="duty">
                            </td>
                            <td>
                                <label for="courseProperty">课程性质：</label>
                                <select id="courseProperty" name="courseProperty">
                                    <option></option>
                                    <option value="essential">必修</option>
                                    <option value="selectivity">选修</option>
                                    <option value="quality">素拓</option>
                                </select>
                            </td>
                        </tr>
                    </table>
                    <span>学生到课情况：
                        <label for="total">应到</label>
                        <input type="text" id="total" name="total" class="text-center">人，
                        <label for="actual">实到</label>
                        <input type="text" id="actual" name="actual" class="text-center">人，
                        <label for="late">迟到</label>
                        <input type="text" id="late" name="late" class="text-center">人，
                        <label for="leaveEarly">早退</label>
                        <input type="text" id="leaveEarly" name="leaveEarly" class="text-center">人，
                        <label for="turnover">课上进出教室</label>
                        <input type="text" id="turnover" name="turnover" class="text-center">人
                    </span>
                </div>
                <div class="form-group">
                    <table class="table table-bordered table-hover">
                        <thead>
                        <tr>
                            <th class="text-center">测评要素</th>
                            <th class="text-center" colspan="2">评价内涵</th>
                            <th class="text-center">评价等级</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="text-center" rowspan="4">1、教学态度</td>
                            <td class="text-center">1</td>
                            <td class="text-center">
                                <label for="question1">
                                    	内容熟练，讲解认真，精神饱满
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question1" name="question1">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">2</td>
                            <td class="text-center">
                                <label for="question2">
                                    	准备充分，PPT制作简介清晰、难重点突出
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question2" name="question2">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">3</td>
                            <td class="text-center">
                                <label for="question3">
                                    	遵守教学纪律，按时上下课，不随意调、停课或请人代课
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question3" name="question3">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">4</td>
                            <td class="text-center">
                                <label for="question4">
                                    	尊重学生严格管理，学生无迟到、旷课、早退、课上出入课堂
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question4" name="question4">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center" rowspan="5">2、教学内容</td>
                            <td class="text-center">1</td>
                            <td class="text-center">
                                <label for="question5">
                                    	符合课堂大纲要求，教学目标明确
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question5" name="question5">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">2</td>
                            <td class="text-center">
                                <label for="question6">
                                    	教学深度、广度适宜，信息量适度，例题典型，易于理解掌握
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question6" name="question6">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">3</td>
                            <td class="text-center">
                                <label for="question7">
                                    	注重前后知识的联系
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question7" name="question7">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">4</td>
                            <td class="text-center">
                                <label for="question8">
                                    	注重理论联系实际，联系专业
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question8" name="question8">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">5</td>
                            <td class="text-center">
                                <label for="question9">
                                    	注重吸收学科发展的新思想、新概念、新成果，更新教学内容
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question9" name="question9">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center" rowspan="5">3、教学能力</td>
                            <td class="text-center">1</td>
                            <td class="text-center">
                                <label for="question10">
                                    	语言流畅、声音洪亮、语速适当、抑扬顿挫，自如的掌控课堂
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question10" name="question10">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">2</td>
                            <td class="text-center">
                                <label for="question11">
                                    	概念准确、思路清晰，讲课生动，分析透彻
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question11" name="question11">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">3</td>
                            <td class="text-center">
                                <label for="question12">
                                    	重点突出，难点明确，且对难点分解、讲授易于理解
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question12" name="question12">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">4</td>
                            <td class="text-center">
                                <label for="question13">
                                    	课堂时间分配有序，教、练结合，张弛有度
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question13" name="question13">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">5</td>
                            <td class="text-center">
                                <label for="question14">
                                    	有效利用板书的特点，且书写绘图规范、清楚
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question14" name="question14">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center" rowspan="4">4、教学方法</td>
                            <td class="text-center">1</td>
                            <td class="text-center">
                                <label for="question15">
                                    	不照本宣科，启发引导，循循善诱，引导学生理解讲授内容
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question15" name="question15">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">2</td>
                            <td class="text-center">
                                <label for="question16">
                                    	有效利用PPT、案例、动画、实时仿真等生动形象展开教学
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question16" name="question16">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">3</td>
                            <td class="text-center">
                                <label for="question17">
                                    PPT和板书有机结合，充分发挥各自的优势
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question17" name="question17">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">4</td>
                            <td class="text-center">
                                <label for="question18">
                                    	积极采用各种方法和手段，有特色且有效的展开教学
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question18" name="question18">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center" rowspan="4">5、教学效果</td>
                            <td class="text-center">1</td>
                            <td class="text-center">
                                <label for="question19">
                                    	学生到课率高，反映学生对本课程教学目标的认可程度
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question19" name="question19">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">2</td>
                            <td class="text-center">
                                <label for="question20">
                                    	学生前排率高，反映学生对本课程的学习态度
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question20" name="question20">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">3</td>
                            <td class="text-center">
                                <label for="question21">
                                    课堂秩序井然，学生听课认真，抬头率高，反映讲授有吸引力
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question21" name="question21">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">4</td>
                            <td class="text-center">
                                <label for="question22">
                                    互动好，气氛活跃，学生对练习问题回答率高，反映学习有效
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question22" name="question22">
                                    <option></option>
                                    <option value="best">很好</option>
                                    <option value="better">较好</option>
                                    <option value="general">一般</option>
                                    <option value="badder">较差</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center" colspan="3">课堂教学总体得分（100分）</td>
                            <td><input type="text" id="score" name="score"></td>
                        </tr>
                        <tr>
                            <td class="text-center">6、教学条件</td>
                            <td class="text-center" colspan="3">黑板、投影效果、声音效果、灯光、上课铃声、桌、椅、卫生等 <br>
                                <input type="radio" name="condition" value="normal">正常
                                <input type="radio" name="condition" value="trouble">问题
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <textarea id="suggest" name="suggest" rows="10" cols="150" placeholder="问题和建议："></textarea>
                </div>
                <input type="reset" id="reset" name="reset" value="重置" class="btn btn-primary">
                <input type="submit" id="submit" name="submit" onclick="return check(this);" value="提交" class="btn btn-primary">
            </form>
        </div>
    </div>
</div>
</body>
</html>