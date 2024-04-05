--[1] �Խ���(DotNetNote)�� ���̺� ����
Create Table dbo.Notes
(
    Id              Int Identity(1, 1) Not Null Primary Key,  --��ȣ
    Name            NVarChar(25) Not Null,                    --�̸�
    Email           NVarChar(100) Null,                       --�̸��� 
    Title           NVarChar(150) Not Null,                   --����
    PostDate        DateTime Default GetDate() Not Null,      --�ۼ��� 
    PostIp          NVarChar(15) Null,                        --�ۼ�IP
    Content         NText Not Null,                           --����
    Password        NVarChar(20) Null,                        --��й�ȣ
    ReadCount       Int Default 0,                            --��ȸ��
    Encoding        NVarChar(10) Not Null,                    --���ڵ�(HTML/Text)
    Homepage        NVarChar(100) Null,                       --Ȩ������
    ModifyDate      DateTime Null,                            --������ 
    ModifyIp        NVarChar(15) Null,                        --����IP
    FileName        NVarChar(255) Null,                       --���ϸ�
    FileSize        Int Default 0,                            --����ũ��
    DownCount       Int Default 0,                            --�ٿ�� 
    Ref             Int Not Null,                             --����(�θ��)
    Step            Int Default 0,                            --�亯����(����)
    RefOrder        Int Default 0,                            --�亯����
    AnswerNum       Int Default 0,                            --�亯��
    ParentNum       Int Default 0,                            --�θ�۹�ȣ
    CommentCount    Int Default 0,                            --��ۼ�
    Category        NVarChar(10) Default('Free') Null         --ī�װ�(Ȯ��...)
)
Go
