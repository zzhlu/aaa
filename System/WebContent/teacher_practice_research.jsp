<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>教学督导听课（实践课）记录表</title>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./css/common.css">
    <script src="./js/teacher_practice_research.js"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <form action="TeaPracResearch" method="post" name="teaPracResearch">
                <div class="page-header">
                    <h2 class="text-center">教学督导听课（实践课）记录表</h2>
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
                                <label for="guideTeacher">指导教师：</label>
                                <input type="text" id="guideTeacher" name="guideTeacher">
                            </td>
                            <td>
                                <label for="guideTeacherDuty">指导教师职称：</label>
                                <input type="text" id="guideTeacherDuty" name="guideTeacherDuty">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="guideTeacherInstitute">指导教师所在学院：</label>
                                <input type="text" id="guideTeacherInstitute" name="guideTeacherInstitute">
                            </td>
                            <td>
                                <label for="labTeacher">实验室教师：</label>
                                <input type="text" id="labTeacher" name="labTeacher">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="labTeacherDuty">实验室教师职称：</label>
                                <input type="text" id="labTeacherDuty" name="labTeacherDuty">
                            </td>
                            <td>
                                <label for="labTeacherInstitute">实验室教师所在学院：</label>
                                <input type="text" id="labTeacherInstitute" name="labTeacherInstitute">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="practiceType">实践类型：</label>
                                <select id="practiceType" name="practiceType">
                                    <option></option>
                                    <option value="inClass">课内</option>
                                    <option value="independent">独立实验课</option>
                                    <option value="concentrate">集中实践</option>
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
                        <input type="text" id="late" name="late" class="text-center">人
                    </span>
                </div>
                <div class="form-group">
                    <table class="table table-bordered table-hover">
                        <thead>
                        <tr>
                            <th colspan="3" class="text-center">
                                	实验课检查内容（指导教师总分20+60+20，学生总分20+60+20，实验室教师总分50+50）
                            </th>
                            <th class="text-center">得分</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td rowspan="3">准备 20/20/50</td>
                            <td>指导教师</td>
                            <td>明确实验教学目的，实验符合大纲要求；熟悉实验内容，有计划、足课时的安排实验； <br>
                                	准备充分，提前与实验室沟通，与实验室老师一起做好实验前的各项准备； <br>
                                	有实验讲义或教案，集中实践有计划书； <br>
                                	提供学生实验指导书，指导学生做好实验预习，及时通知学生实验的时间和地点。
                            </td>
                            <td><input type="text" id="score1" name="score1"></td>
                        </tr>
                        <tr>
                            <td>学生</td>
                            <td>
                                	明确实验目的，认真做好实验预习； <br>
                                	按时参加实验，做好实验开始前的准备。
                            </td>
                            <td><input type="text" id="score2" name="score2"></td>
                        </tr>
                        <tr>
                            <td>实验室教师</td>
                            <td>
                                	做好实验准备，保证实验室干净整洁； <br>
                               	          确保所有实验仪器、设备软硬件运行正常； <br>
                                	提前开门，保证实验正常进行。
                            </td>
                            <td><input type="text" id="score3" name="score3"></td>
                        </tr>
                        <tr>
                            <td rowspan="3">实施 60/60/50</td>
                            <td>指导教师</td>
                            <td>提前到场，细心指导学生做好实验前的准备工作；组织学生及时签到； <br>
                                	讲授简洁、清楚，引导学生深入思考，理论联系实际开展实验； <br>
                                	组织有序，指导细致认真，严格要求学生，实验秩序井然。
                            </td>
                            <td><input type="text" id="score4" name="score4"></td>
                        </tr>
                        <tr>
                            <td>学生</td>
                            <td>
                                	认真动手实验，积极开展实践探索； <br>
                                	发现问题，认真思考，解决问题，实现理论到实践的跨越； <br>
                                	完成实验内容，认真记录实验数据。
                            </td>
                            <td><input type="text" id="score5" name="score5"></td>
                        </tr>
                        <tr>
                            <td>实验室教师</td>
                            <td>
                                	认真填写实验日志等相关资料； <br>
                                	及时解决实验过程中出现的仪器设备、供电故障灯软硬件故障，保证实验正常进行。
                            </td>
                            <td><input type="text" id="score6" name="score6"></td>
                        </tr>
                        <tr>
                            <td rowspan="2">效果 20/20</td>
                            <td>指导教师</td>
                            <td>
                                	实验到课率高，没有迟到、早退现象，仔细验收实验结果和实验记录，认真批改实验报告，
                                	集中实践及时填写每个学生的过程考核表和成绩鉴定表，实验完成率高，效果好。
                            </td>
                            <td><input type="text" id="score7" name="score7"></td>
                        </tr>
                        <tr>
                            <td>学生</td>
                            <td>
                                	完成规定的实验任务，达到实验目的；按时认真的提交实验报告。
                            </td>
                            <td><input type="text" id="score8" name="score8"></td>
                        </tr>
                        </tbody>
                    </table>
                    <textarea id="suggest" name="suggest" rows="10" cols="150" placeholder="综合评价（优点、不足与建议）："></textarea>
                </div>
                <input type="reset" id="reset" name="reset" value="重置" class="btn btn-primary">
                <input type="submit" id="submit" name="submit" onclick="return check(this);" value="提交" class="btn btn-primary">
            </form>
        </div>
    </div>
</div>
</body>
</html>