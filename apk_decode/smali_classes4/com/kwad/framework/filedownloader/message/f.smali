.class public Lcom/kwad/framework/filedownloader/message/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(BLcom/kwad/framework/filedownloader/d/c;Lcom/kwad/framework/filedownloader/download/d$a;)Lcom/kwad/framework/filedownloader/message/MessageSnapshot;
    .locals 7

    .line 12
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    move-result v1

    const/4 v0, -0x4

    if-eq p0, v0, :cond_10

    const/4 v0, -0x3

    if-eq p0, v0, :cond_e

    const/4 v0, -0x1

    if-eq p0, v0, :cond_c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_7

    const/4 v0, 0x3

    if-eq p0, v0, :cond_5

    const/4 v0, 0x5

    if-eq p0, v0, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    .line 13
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 14
    const-string v2, "it can\'t takes a snapshot for the task(%s) when its status is %d,"

    invoke-static {v2, v0}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 16
    const-class v3, Lcom/kwad/framework/filedownloader/message/f;

    invoke-static {v3, v2, p0}, Lcom/kwad/framework/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p2}, Lcom/kwad/framework/filedownloader/download/d$a;->getException()Ljava/lang/Exception;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 18
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {p2}, Lcom/kwad/framework/filedownloader/download/d$a;->getException()Ljava/lang/Exception;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    :goto_0
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->AN()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 21
    new-instance p2, Lcom/kwad/framework/filedownloader/message/d$d;

    .line 22
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->CX()J

    move-result-wide v2

    invoke-direct {p2, v1, v2, v3, p0}, Lcom/kwad/framework/filedownloader/message/d$d;-><init>(IJLjava/lang/Throwable;)V

    return-object p2

    .line 23
    :cond_1
    new-instance p2, Lcom/kwad/framework/filedownloader/message/h$d;

    .line 24
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->CX()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-direct {p2, v1, p1, p0}, Lcom/kwad/framework/filedownloader/message/h$d;-><init>(IILjava/lang/Throwable;)V

    return-object p2

    .line 25
    :cond_2
    new-instance p0, Lcom/kwad/framework/filedownloader/message/MessageSnapshot$b;

    invoke-direct {p0, v1}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot$b;-><init>(I)V

    return-object p0

    .line 26
    :cond_3
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->AN()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 27
    new-instance v0, Lcom/kwad/framework/filedownloader/message/d$h;

    .line 28
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->CX()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/kwad/framework/filedownloader/download/d$a;->getException()Ljava/lang/Exception;

    move-result-object v4

    .line 29
    invoke-virtual {p2}, Lcom/kwad/framework/filedownloader/download/d$a;->AL()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/kwad/framework/filedownloader/message/d$h;-><init>(IJLjava/lang/Throwable;I)V

    return-object v0

    .line 30
    :cond_4
    new-instance p0, Lcom/kwad/framework/filedownloader/message/h$h;

    .line 31
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->CX()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-virtual {p2}, Lcom/kwad/framework/filedownloader/download/d$a;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 32
    invoke-virtual {p2}, Lcom/kwad/framework/filedownloader/download/d$a;->AL()I

    move-result p2

    invoke-direct {p0, v1, p1, v0, p2}, Lcom/kwad/framework/filedownloader/message/h$h;-><init>(IILjava/lang/Throwable;I)V

    return-object p0

    .line 33
    :cond_5
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->AN()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 34
    new-instance p0, Lcom/kwad/framework/filedownloader/message/d$g;

    .line 35
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->CX()J

    move-result-wide p1

    invoke-direct {p0, v1, p1, p2}, Lcom/kwad/framework/filedownloader/message/d$g;-><init>(IJ)V

    return-object p0

    .line 36
    :cond_6
    new-instance p0, Lcom/kwad/framework/filedownloader/message/h$g;

    .line 37
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->CX()J

    move-result-wide p1

    long-to-int p1, p1

    invoke-direct {p0, v1, p1}, Lcom/kwad/framework/filedownloader/message/h$g;-><init>(II)V

    return-object p0

    .line 38
    :cond_7
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->AB()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->getFilename()Ljava/lang/String;

    move-result-object p0

    :goto_1
    move-object v5, p0

    goto :goto_2

    :cond_8
    const/4 p0, 0x0

    goto :goto_1

    .line 39
    :goto_2
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->AN()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 40
    new-instance v0, Lcom/kwad/framework/filedownloader/message/d$c;

    .line 41
    invoke-virtual {p2}, Lcom/kwad/framework/filedownloader/download/d$a;->CC()Z

    move-result v2

    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->getTotal()J

    move-result-wide v3

    move-object v6, v5

    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->CY()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/kwad/framework/filedownloader/message/d$c;-><init>(IZJLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_9
    move-object v6, v5

    .line 42
    new-instance v0, Lcom/kwad/framework/filedownloader/message/h$c;

    .line 43
    invoke-virtual {p2}, Lcom/kwad/framework/filedownloader/download/d$a;->CC()Z

    move-result v2

    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->getTotal()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->CY()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/kwad/framework/filedownloader/message/h$c;-><init>(IZILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 44
    :cond_a
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->AN()Z

    move-result p0

    if-eqz p0, :cond_b

    .line 45
    new-instance v0, Lcom/kwad/framework/filedownloader/message/d$f;

    .line 46
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->CX()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->getTotal()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/kwad/framework/filedownloader/message/d$f;-><init>(IJJ)V

    return-object v0

    .line 47
    :cond_b
    new-instance p0, Lcom/kwad/framework/filedownloader/message/h$f;

    .line 48
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->CX()J

    move-result-wide v2

    long-to-int p2, v2

    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->getTotal()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-direct {p0, v1, p2, p1}, Lcom/kwad/framework/filedownloader/message/h$f;-><init>(III)V

    return-object p0

    .line 49
    :cond_c
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->AN()Z

    move-result p0

    if-eqz p0, :cond_d

    .line 50
    new-instance p0, Lcom/kwad/framework/filedownloader/message/d$d;

    .line 51
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->CX()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/kwad/framework/filedownloader/download/d$a;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/kwad/framework/filedownloader/message/d$d;-><init>(IJLjava/lang/Throwable;)V

    return-object p0

    .line 52
    :cond_d
    new-instance p0, Lcom/kwad/framework/filedownloader/message/h$d;

    .line 53
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->CX()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-virtual {p2}, Lcom/kwad/framework/filedownloader/download/d$a;->getException()Ljava/lang/Exception;

    move-result-object p2

    invoke-direct {p0, v1, p1, p2}, Lcom/kwad/framework/filedownloader/message/h$d;-><init>(IILjava/lang/Throwable;)V

    return-object p0

    .line 54
    :cond_e
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->AN()Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_f

    .line 55
    new-instance p0, Lcom/kwad/framework/filedownloader/message/d$b;

    .line 56
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->getTotal()J

    move-result-wide v2

    invoke-direct {p0, v1, p2, v2, v3}, Lcom/kwad/framework/filedownloader/message/d$b;-><init>(IZJ)V

    return-object p0

    .line 57
    :cond_f
    new-instance p0, Lcom/kwad/framework/filedownloader/message/h$b;

    .line 58
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->getTotal()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-direct {p0, v1, p2, p1}, Lcom/kwad/framework/filedownloader/message/h$b;-><init>(IZI)V

    return-object p0

    .line 59
    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "please use #catchWarn instead %d"

    invoke-static {p2, p1}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(IJJZ)Lcom/kwad/framework/filedownloader/message/MessageSnapshot;
    .locals 6

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    if-eqz p5, :cond_0

    move v1, p0

    .line 6
    new-instance p0, Lcom/kwad/framework/filedownloader/message/d$i;

    move-wide p4, p3

    move-wide p2, p1

    move p1, v1

    invoke-direct/range {p0 .. p5}, Lcom/kwad/framework/filedownloader/message/d$i;-><init>(IJJ)V

    return-object p0

    :cond_0
    move v1, p0

    move-wide p4, p3

    move-wide p2, p1

    .line 7
    new-instance v0, Lcom/kwad/framework/filedownloader/message/d$j;

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/kwad/framework/filedownloader/message/d$j;-><init>(IJJ)V

    return-object v0

    :cond_1
    move v1, p0

    move-wide v4, p3

    move-wide p2, p1

    if-eqz p5, :cond_2

    .line 8
    new-instance p0, Lcom/kwad/framework/filedownloader/message/h$i;

    long-to-int p1, p2

    long-to-int p2, v4

    invoke-direct {p0, v1, p1, p2}, Lcom/kwad/framework/filedownloader/message/h$i;-><init>(III)V

    return-object p0

    .line 9
    :cond_2
    new-instance p0, Lcom/kwad/framework/filedownloader/message/h$j;

    long-to-int p1, p2

    long-to-int p2, v4

    invoke-direct {p0, v1, p1, p2}, Lcom/kwad/framework/filedownloader/message/h$j;-><init>(III)V

    return-object p0
.end method

.method public static a(IJLjava/lang/Throwable;)Lcom/kwad/framework/filedownloader/message/MessageSnapshot;
    .locals 2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 10
    new-instance v0, Lcom/kwad/framework/filedownloader/message/d$d;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kwad/framework/filedownloader/message/d$d;-><init>(IJLjava/lang/Throwable;)V

    return-object v0

    .line 11
    :cond_0
    new-instance v0, Lcom/kwad/framework/filedownloader/message/h$d;

    long-to-int p1, p1

    invoke-direct {v0, p0, p1, p3}, Lcom/kwad/framework/filedownloader/message/h$d;-><init>(IILjava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(ILjava/io/File;Z)Lcom/kwad/framework/filedownloader/message/MessageSnapshot;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    const/4 v2, 0x1

    if-lez p1, :cond_1

    if-eqz p2, :cond_0

    .line 2
    new-instance p1, Lcom/kwad/framework/filedownloader/message/d$a;

    invoke-direct {p1, p0, v2, v0, v1}, Lcom/kwad/framework/filedownloader/message/d$a;-><init>(IZJ)V

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lcom/kwad/framework/filedownloader/message/d$b;

    invoke-direct {p1, p0, v2, v0, v1}, Lcom/kwad/framework/filedownloader/message/d$b;-><init>(IZJ)V

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    .line 4
    new-instance p1, Lcom/kwad/framework/filedownloader/message/h$a;

    long-to-int p2, v0

    invoke-direct {p1, p0, v2, p2}, Lcom/kwad/framework/filedownloader/message/h$a;-><init>(IZI)V

    return-object p1

    .line 5
    :cond_2
    new-instance p1, Lcom/kwad/framework/filedownloader/message/h$b;

    long-to-int p2, v0

    invoke-direct {p1, p0, v2, p2}, Lcom/kwad/framework/filedownloader/message/h$b;-><init>(IZI)V

    return-object p1
.end method

.method public static e(Lcom/kwad/framework/filedownloader/a;)Lcom/kwad/framework/filedownloader/message/MessageSnapshot;
    .locals 7

    .line 1
    invoke-interface {p0}, Lcom/kwad/framework/filedownloader/a;->AN()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/kwad/framework/filedownloader/message/d$e;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/kwad/framework/filedownloader/a;->getId()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-interface {p0}, Lcom/kwad/framework/filedownloader/a;->AE()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    invoke-interface {p0}, Lcom/kwad/framework/filedownloader/a;->AG()J

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    invoke-direct/range {v1 .. v6}, Lcom/kwad/framework/filedownloader/message/d$e;-><init>(IJJ)V

    .line 22
    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_0
    new-instance v0, Lcom/kwad/framework/filedownloader/message/h$e;

    .line 26
    .line 27
    invoke-interface {p0}, Lcom/kwad/framework/filedownloader/a;->getId()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-interface {p0}, Lcom/kwad/framework/filedownloader/a;->getSmallFileSoFarBytes()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-interface {p0}, Lcom/kwad/framework/filedownloader/a;->getSmallFileTotalBytes()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    invoke-direct {v0, v1, v2, p0}, Lcom/kwad/framework/filedownloader/message/h$e;-><init>(III)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method public static t(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)Lcom/kwad/framework/filedownloader/message/MessageSnapshot;
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/kwad/framework/filedownloader/message/c;->AH()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x3

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/kwad/framework/filedownloader/message/a$a;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/kwad/framework/filedownloader/message/a$a;-><init>(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->getId()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {p0}, Lcom/kwad/framework/filedownloader/message/c;->AH()B

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string v1, "take block completed snapshot, must has already be completed. %d %d"

    .line 37
    .line 38
    invoke-static {v1, p0}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method
