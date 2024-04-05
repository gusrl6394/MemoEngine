--[7] �ش� ���� ����� ���� ���ν���: �亯���� ������ ������Ʈ�ϰ� ������ �����.
Create Proc dbo.DeleteNote
    @Id Int,
    @Password NVarChar(30) -- ��ȣ �Ű����� �߰�
As
    Declare @cnt Int
    Select @cnt = Count(*) From Notes
    Where Id = @Id And Password = @Password

    If @cnt = 0
    Begin
        Return 0 -- ��ȣ�� ��ȣ�� �´°� ������ 0�� ��ȯ
    End	

    Declare @AnswerNum Int
    Declare @RefOrder Int
    Declare @Ref Int
    Declare @ParentNum Int

    Select
        @AnswerNum = AnswerNum,     @RefOrder = RefOrder,
        @Ref = Ref,                 @ParentNum = ParentNum
    From Notes
    Where Id = @Id

    If @AnswerNum = 0
    Begin
        If @RefOrder > 0 
        Begin
            UPDATE Notes SET RefOrder = RefOrder - 1
            WHERE Ref = @Ref AND RefOrder > @RefOrder
            UPDATE Notes SET AnswerNum = AnswerNum - 1 WHERE Id = @ParentNum
        End
        Delete Notes Where Id = @Id
        Delete Notes 
        WHERE 
            Id = @ParentNum AND ModifyIp = N'((DELETED))' AND AnswerNum = 0	
    End
    Else
    Begin
        Update Notes 
        Set 
            Name = N'(Unknown)', Email = '', Password = '',
            Title = N'(������ ���Դϴ�.)', 
            Content = N'(������ ���Դϴ�. ' 
            + N'���� �亯�� ���ԵǾ� �ֱ� ������ ���븸 �����Ǿ����ϴ�.)',
            ModifyIp = N'((DELETED))', FileName = '', 
            FileSize = 0, CommentCount = 0
        Where Id = @Id  
    End
Go
