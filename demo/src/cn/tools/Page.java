/*  1:   */ package cn.tools;
/*  2:   */ 
/*  6:   */ public class Page
/*  7:   */ {
/*  8:   */   private int totalPageCount;
/*  9:   */   private int pageSize;
/* 10:   */   private int totalCount;
/* 11:   */   private int currPageNo;
/* 13:   */   
/* 23:   */   
/* 24:   */   public int getCurrPageNo()
/* 25:   */   {
/* 26:23 */     return this.currPageNo;
/* 27:   */   }
/* 28:   */   
/* 29:   */   public void setCurrPageNo(int currPageNo)
/* 30:   */   {
/* 31:27 */     this.currPageNo = currPageNo;
/* 32:   */   }
/* 33:   */   
/* 34:   */   public Page() {}
/* 35:   */   
/* 36:   */   public Page(int totalPageCount, int pageSize, int currPageNo, int totalCount)
/* 37:   */   {
/* 38:33 */     setTotalPageCount(totalPageCount);
/* 39:34 */     setTotalCount(totalCount);
/* 40:35 */     setPageSize(pageSize);
/* 42:37 */     setCurrPageNo(currPageNo);
/* 43:   */   }
/* 44:   */   
/* 45:   */   public int getTotalPageCount()
/* 46:   */   {
/* 47:41 */     return this.totalPageCount;
/* 48:   */   }
/* 49:   */   
/* 50:   */   public void setTotalPageCount(int totalPageCount)
/* 51:   */   {
/* 52:44 */     this.totalPageCount = totalPageCount;
/* 53:   */   }
/* 54:   */   
/* 55:   */   public int getPageSize()
/* 56:   */   {
/* 57:47 */     return this.pageSize;
/* 58:   */   }
/* 59:   */   
/* 60:   */   public void setPageSize(int pageSize)
/* 61:   */   {
/* 62:50 */     this.pageSize = pageSize;
/* 63:   */   }
/* 64:   */   
/* 65:   */   public int getTotalCount()
/* 66:   */   {
/* 67:53 */     return this.totalCount;
/* 68:   */   }
/* 69:   */   
/* 70:   */   public void setTotalCount(int totalCount)
/* 71:   */   {
/* 72:56 */     if (totalCount > 0)
/* 73:   */     {
/* 74:57 */       this.totalCount = totalCount;
/* 75:58 */       this.totalPageCount = (totalCount % this.pageSize == 0 ? totalCount / this.pageSize : totalCount / this.pageSize + 1);
/* 76:   */     }
/* 77:   */   }
/* 78:   */ }


