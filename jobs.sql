create database jobs
character set utf8;
use jobs;

CREATE TABLE `seeker` (                                 -- 求职者表
  `seekerid` INT(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,-- id
  `nickname` VARCHAR(30) UNIQUE DEFAULT NULL,               -- 昵称
  `seekerpassword` VARCHAR(6)  DEFAULT NULL,                -- 密码
  `seekername` VARCHAR(30)  DEFAULT NULL,               -- 姓名
  `seekergender` ENUM('f', 'm')  DEFAULT NULL,        -- 性别
  `seekerdegree` varchar(20)  DEFAULT NULL,             -- 最高学位
  `seekerbirth` VARCHAR(20) DEFAULT NULL,               -- 出生日期
  `seekerphoto` VARCHAR(100) DEFAULT NULL,              -- 照片
  `seekerschool` VARCHAR(20) DEFAULT NULL,              -- 毕业学校
  `seekermajor` VARCHAR(10) DEFAULT NULL,               -- 专业
  `politicstatus` VARCHAR(30) DEFAULT NULL,             -- 政治面貌
  `seekeremail` VARCHAR(20)  DEFAULT NULL,              -- 邮箱
  `seekertel` VARCHAR(11) DEFAULT NULL,                 -- 电话
  `seekeraddress` VARCHAR(30)  DEFAULT NULL,            -- 住址
  `seekernation` VARCHAR(10) DEFAULT NULL,              -- 民族
  
  `t1` VARCHAR(20) DEFAULT NULL,            -- 教育经历 本科
  `c1` VARCHAR(30) DEFAULT NULL,            -- 时间
  `e1` VARCHAR(50) DEFAULT NULL,            -- 地点
  `t2` VARCHAR(20) DEFAULT NULL,            -- 教育经历 研究生
  `c2` VARCHAR(30) DEFAULT NULL,            -- 时间
  `e2` VARCHAR(50) DEFAULT NULL,            -- 地点
  `t3` VARCHAR(20) DEFAULT NULL,            -- 教育经历 博士
  `c3` VARCHAR(30) DEFAULT NULL,            -- 时间
  `e3` VARCHAR(50) DEFAULT NULL             -- 地点
  );
  
  CREATE TABLE `job` (                                 -- 发布的工作信息表
  `jobid` int(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,-- jobid
  `sid` int(6) NOT NULL,                             -- seekerid          
  `companyname` varchar(30) NOT NULL,                -- 公司名称
  `companyaddress` varchar(30) NOT NULL,             -- 公司地址
  `companytelephone` varchar(11) NOT NULL,           -- 公司联系方式
  `companyemail` varchar(20) NOT NULL,               -- 邮箱
  `jobname` varchar(30) NOT NULL,                    -- 职位名称
  `salary` int(8) NOT NULL,                          -- 薪水
  `demand` TEXT NOT NULL,                    -- 职位要求
  `pnumber` int(3) NOT NULL,                         -- 职位所需人数
  `sorts` varchar(30) NOT NULL,                      -- 职位所属类别
  `publishtime` varchar(30) NOT NULL,
  `deadline` varchar(30) NOT NULL,                      -- 期限
  FOREIGN KEY (`sid`) REFERENCES `seeker` (`seekerid`)
);

CREATE TABLE `resume` (                                 -- 简历表
  `resumeid` INT(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,-- id
  `sid` INT(6) NOT NULL,                                -- 求职者id
  `shonor` TEXT DEFAULT NULL,                           -- 所获荣誉及奖项
  `sevaluate` TEXT DEFAULT NULL,                        -- 自我评价
  `sresearch` TEXT DEFAULT NULL,                        -- 个人科研经历
  `sexpe` TEXT DEFAULT NULL,                            -- 工作经历
  `sability` TEXT DEFAULT NULL,                         -- 个人能力
    FOREIGN KEY (`sid`) REFERENCES `seeker` (`seekerid`)
   );

CREATE TABLE `resumeku` (                                 -- 用过的简历表
  `resumekuid` INT(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,-- id
  `sid` INT(6) NOT NULL,                                -- 求职者id
  `shonor` TEXT DEFAULT NULL,                           -- 所获荣誉及奖项
  `sevaluate` TEXT DEFAULT NULL,                        -- 自我评价
  `sresearch` TEXT DEFAULT NULL,                        -- 个人科研经历
  `sexpe` TEXT DEFAULT NULL,                            -- 工作经历
  `sability` TEXT DEFAULT NULL,                         -- 个人能力
    FOREIGN KEY (`sid`) REFERENCES `seeker` (`seekerid`)
   );

CREATE TABLE `application` (                                 -- 申请表
  `applicationid` INT(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,-- id
  `jobid` INT(6) NOT NULL,                                   -- 对应工作id
  `seekerid` INT(6) NOT NULL,                                -- 对应求职者id
  `resumekuid` INT(6) NOT NULL,                                -- 对应简历库id
  `state` VARCHAR(20) DEFAULT '待审核',                              -- 状态（通过或者未通过）
  `reason` VARCHAR(50) NOT NULL,
    FOREIGN KEY (`jobid`) REFERENCES `job` (`jobid`) on delete cascade,
    FOREIGN KEY (`resumekuid`) REFERENCES `resumeku` (`resumekuid`),
    FOREIGN KEY (`seekerid`) REFERENCES `seeker` (`seekerid`)
    );

CREATE TABLE `news`(                                         -- 资讯表
`newsid` INT(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,                                     -- id
`newstitle` VARCHAR(30) NOT NULL,                             -- 标题
`newscontent` TEXT NOT NULL,                                  -- 内容
`newstime` VARCHAR(30) NOT NULL                            -- 发布时间
);