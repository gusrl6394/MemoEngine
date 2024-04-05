# MemoEngine

### 게시판의 주요 기능
```
- 글 쓰기, 글 목록, 글 보기, 글 수정, 글 삭제, 글 검색 기능을 제공한다
- 글에 대한 답변 기능을 제공한다
- 파일 업로드 및 다운로드 기능을 제공한다. 이 때 다운로드는 강제 다운로드 기능을 적용한다
- 이미지를 업로드했을 때 상세보기 페이지에서 이미지를 실행시켜 주는 기능을 제공한다
```

### 게시판의 주요 페이지
```
- 입력(BoardWrite.aspx)
- 출력(BoardList.aspx)
- 상세(BoardView.aspx)
- 수정(BoardModify.aspx)
- 삭제(BoardDelete.aspx)
- 검색(BoardSearchFormSinglControl.ascx)
- 답변(BoardReply.aspx)
- 댓글(BoardCommentControl.ascx)
```

### 추가
```
- 쿼리문은 별도의 MSSQL 프로시저를 통해 CRUD 구현
- 커스텀된 외부의 DDL 파일 적용  
```

### 게시판 리스트
![스크린샷 2024-04-06 000138](https://github.com/gusrl6394/MemoEngine/assets/20663508/43e70da8-599b-4d8a-b163-8488190ce590)

### 게시판 뷰
![스크린샷 2024-04-06 000149](https://github.com/gusrl6394/MemoEngine/assets/20663508/f945bd9d-1252-450e-92f0-be4407c52349)

### 이미지 첨부된 게시판 리스트
![스크린샷 2024-04-06 001043](https://github.com/gusrl6394/MemoEngine/assets/20663508/6e7cb294-3994-4ee6-a4dc-1cad9b2d110a)

### 이미지 첨부된 게시판 뷰 (다운로드 기능 첨부)
![스크린샷 2024-04-06 001102](https://github.com/gusrl6394/MemoEngine/assets/20663508/ac01acfa-6bcd-46ab-a791-9628065690fe)

### 제목으로 "이름" 검색 결과
![스크린샷 2024-04-06 001445](https://github.com/gusrl6394/MemoEngine/assets/20663508/2a082604-b67c-4bb3-a176-51eace488a07)

### 작성자 "이름" 검색 결과
![스크린샷 2024-04-06 001316](https://github.com/gusrl6394/MemoEngine/assets/20663508/37d36e57-edfb-4489-b357-986a45e02990)
