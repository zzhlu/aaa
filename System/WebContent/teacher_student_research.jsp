<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>教师评学评价表</title>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./css/common.css">
    <script src="./js/teacher_student_research.js"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <form action="TeaStuResearch" method="post" name="teaStuResearch">
            	<div class="page-header">
                    <h2 class="text-center">教师评学评价表</h2>
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
                                <label for="teacherName">教师名：</label>
                                <input type="text" id="teacherName" name="teacherName">
                            </td>
                            <td>
                                <label for="term">开课学期：</label>
                                <input type="text" id="term" name="term">
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="form-group">
                    <table class="table table-bordered table-hover">
                        <thead>
                        <tr>
                            <th class="text-center" rowspan="2">一级指标</th>
                            <th class="text-center" colspan="2">二级指标</th>
                            <th class="text-center" rowspan="2">评价等级</th>
                        </tr>
                        <tr>
                            <th class="text-center">序号</th>
                            <th class="text-center">评价内容</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="text-center" rowspan="13">班级学风</td>
                            <td class="text-center">1</td>
                            <td class="text-center">
                                <label for="question1">
                                   	 不迟到，不早退
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question1" name="question1">
                                    <option></option>
                                    <option value="excellence">优秀（5分）</option>
                                    <option value="well">良好（4分）</option>
                                    <option value="qualified">合格（3分）</option>
                                    <option value="badder">较差（2分）</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">2</td>
                            <td class="text-center">
                                <label for="question2">
                                    	学生到课率高
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question2" name="question2">
                                    <option></option>
                                    <option value="excellence">优秀（5分）</option>
                                    <option value="well">良好（4分）</option>
                                    <option value="qualified">合格（3分）</option>
                                    <option value="badder">较差（2分）</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">3</td>
                            <td class="text-center">
                                <label for="question3">
                                    	课堂学习气氛活跃，学生发言踊跃
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question3" name="question3">
                                    <option></option>
                                    <option value="excellence">优秀（5分）</option>
                                    <option value="well">良好（4分）</option>
                                    <option value="qualified">合格（3分）</option>
                                    <option value="badder">较差（2分）</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">4</td>
                            <td class="text-center">
                                <label for="question4">
                                    	课堂秩序好
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question4" name="question4">
                                    <option></option>
                                    <option value="excellence">优秀（5分）</option>
                                    <option value="well">良好（4分）</option>
                                    <option value="qualified">合格（3分）</option>
                                    <option value="badder">较差（2分）</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">5</td>
                            <td class="text-center">
                                <label for="question5">
                                    	尊重师长，文明礼貌
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question5" name="question5">
                                    <option></option>
                                    <option value="excellence">优秀（5分）</option>
                                    <option value="well">良好（4分）</option>
                                    <option value="qualified">合格（3分）</option>
                                    <option value="badder">较差（2分）</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">6</td>
                            <td class="text-center">
                                <label for="question6">
                                    	作业完成情况好，无抄袭现象
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question6" name="question6">
                                    <option></option>
                                    <option value="excellence">优秀（5分）</option>
                                    <option value="well">良好（4分）</option>
                                    <option value="qualified">合格（3分）</option>
                                    <option value="badder">较差（2分）</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">7</td>
                            <td class="text-center">
                                <label for="question7">
                                    	自学能力好，课前预习，课后复习
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question7" name="question7">
                                    <option></option>
                                    <option value="excellence">优秀（5分）</option>
                                    <option value="well">良好（4分）</option>
                                    <option value="qualified">合格（3分）</option>
                                    <option value="badder">较差（2分）</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">8</td>
                            <td class="text-center">
                                <label for="question8">
                                    	同学之间相互协作
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question8" name="question8">
                                    <option></option>
                                    <option value="excellence">优秀（5分）</option>
                                    <option value="well">良好（4分）</option>
                                    <option value="qualified">合格（3分）</option>
                                    <option value="badder">较差（2分）</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">9</td>
                            <td class="text-center">
                                <label for="question9">
                                    	课后进行难点、疑点讨论
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question9" name="question9">
                                    <option></option>
                                    <option value="excellence">优秀（5分）</option>
                                    <option value="well">良好（4分）</option>
                                    <option value="qualified">合格（3分）</option>
                                    <option value="badder">较差（2分）</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">10</td>
                            <td class="text-center">
                                <label for="question10">
                                    	学生能活学活用，有创新
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question10" name="question10">
                                    <option></option>
                                    <option value="excellence">优秀（5分）</option>
                                    <option value="well">良好（4分）</option>
                                    <option value="qualified">合格（3分）</option>
                                    <option value="badder">较差（2分）</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">11</td>
                            <td class="text-center">
                                <label for="question11">
                                    	学生能结合课程阅读相关参考书与资料
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question11" name="question11">
                                    <option></option>
                                    <option value="excellence">优秀（5分）</option>
                                    <option value="well">良好（4分）</option>
                                    <option value="qualified">合格（3分）</option>
                                    <option value="badder">较差（2分）</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">12</td>
                            <td class="text-center">
                                <label for="question12">
                                    	大部分学生对该门课程感兴趣，学习积极性高
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question12" name="question12">
                                    <option></option>
                                    <option value="excellence">优秀（5分）</option>
                                    <option value="well">良好（4分）</option>
                                    <option value="qualified">合格（3分）</option>
                                    <option value="badder">较差（2分）</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">13</td>
                            <td class="text-center">
                                <label for="question13">
                                    	班级学风总体评价
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question13" name="question13">
                                    <option></option>
                                    <option value="excellence">优秀（5分）</option>
                                    <option value="well">良好（4分）</option>
                                    <option value="qualified">合格（3分）</option>
                                    <option value="badder">较差（2分）</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center" rowspan="7">学习效果</td>
                            <td class="text-center">14</td>
                            <td class="text-center">
                                <label for="question14">
                                   	 学习基础好
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question14" name="question14">
                                    <option></option>
                                    <option value="excellence">优秀（5分）</option>
                                    <option value="well">良好（4分）</option>
                                    <option value="qualified">合格（3分）</option>
                                    <option value="badder">较差（2分）</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">15</td>
                            <td class="text-center">
                                <label for="question15">
                                    	课程基本知识、理论、技能掌握情况好
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question15" name="question15">
                                    <option></option>
                                    <option value="excellence">优秀（5分）</option>
                                    <option value="well">良好（4分）</option>
                                    <option value="qualified">合格（3分）</option>
                                    <option value="badder">较差（2分）</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">16</td>
                            <td class="text-center">
                                <label for="question16">
                                    	教学目标考核结果总体水平较高
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question16" name="question16">
                                    <option></option>
                                    <option value="excellence">优秀（5分）</option>
                                    <option value="well">良好（4分）</option>
                                    <option value="qualified">合格（3分）</option>
                                    <option value="badder">较差（2分）</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">17</td>
                            <td class="text-center">
                                <label for="question17">
                                    	分析、解决问题能力提高
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question17" name="question17">
                                    <option></option>
                                    <option value="excellence">优秀（5分）</option>
                                    <option value="well">良好（4分）</option>
                                    <option value="qualified">合格（3分）</option>
                                    <option value="badder">较差（2分）</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">18</td>
                            <td class="text-center">
                                <label for="question18">
                                    	能灵活运用所学知识
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question18" name="question18">
                                    <option></option>
                                    <option value="excellence">优秀（5分）</option>
                                    <option value="well">良好（4分）</option>
                                    <option value="qualified">合格（3分）</option>
                                    <option value="badder">较差（2分）</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">19</td>
                            <td class="text-center">
                                <label for="question19">
                                    	大部分学生学习方法正确
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question19" name="question19">
                                    <option></option>
                                    <option value="excellence">优秀（5分）</option>
                                    <option value="well">良好（4分）</option>
                                    <option value="qualified">合格（3分）</option>
                                    <option value="badder">较差（2分）</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">20</td>
                            <td class="text-center">
                                <label for="question20">
                                    	学习效果总体评价
                                </label>
                            </td>
                            <td class="text-center">
                                <select id="question20" name="question20">
                                    <option></option>
                                    <option value="excellence">优秀（5分）</option>
                                    <option value="well">良好（4分）</option>
                                    <option value="qualified">合格（3分）</option>
                                    <option value="badder">较差（2分）</option>
                                </select>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <textarea id="suggest" name="suggest" rows="10" cols="150" placeholder="意见及建议："></textarea>
                </div>
                <input type="reset" id="reset" name="reset" value="重置" class="btn btn-primary">
                <input type="submit" id="submit" name="submit" onclick="return check(this);" value="提交" class="btn btn-primary">
            </form>
        </div>
    </div>
</div>
</body>
</html>