.class public Lcom/umeng/analytics/pro/dh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/umeng/analytics/pro/ed;

.field private final b:Lcom/umeng/analytics/pro/eq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/umeng/analytics/pro/dx$a;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/dx$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/dh;-><init>(Lcom/umeng/analytics/pro/ef;)V

    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/pro/ef;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/umeng/analytics/pro/eq;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/eq;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/dh;->b:Lcom/umeng/analytics/pro/eq;

    .line 4
    invoke-interface {p1, v0}, Lcom/umeng/analytics/pro/ef;->a(Lcom/umeng/analytics/pro/er;)Lcom/umeng/analytics/pro/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    return-void
.end method

.method private varargs a(B[BLcom/umeng/analytics/pro/dl;[Lcom/umeng/analytics/pro/dl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/dk;
        }
    .end annotation

    .line 22
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/umeng/analytics/pro/dh;->j([BLcom/umeng/analytics/pro/dl;[Lcom/umeng/analytics/pro/dl;)Lcom/umeng/analytics/pro/dy;

    move-result-object p2

    if-eqz p2, :cond_8

    const/4 p3, 0x2

    if-eq p1, p3, :cond_7

    const/4 p3, 0x3

    if-eq p1, p3, :cond_6

    const/4 p3, 0x4

    if-eq p1, p3, :cond_5

    const/4 p3, 0x6

    if-eq p1, p3, :cond_4

    const/16 p3, 0x8

    if-eq p1, p3, :cond_3

    const/16 p3, 0x64

    const/16 p4, 0xb

    if-eq p1, p3, :cond_2

    const/16 p3, 0xa

    if-eq p1, p3, :cond_1

    if-eq p1, p4, :cond_0

    goto/16 :goto_0

    .line 23
    :cond_0
    iget-byte p1, p2, Lcom/umeng/analytics/pro/dy;->b:B

    if-ne p1, p4, :cond_8

    .line 24
    iget-object p1, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->z()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    iget-object p2, p0, Lcom/umeng/analytics/pro/dh;->b:Lcom/umeng/analytics/pro/eq;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/eq;->e()V

    .line 26
    iget-object p2, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/ed;->B()V

    return-object p1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_1

    .line 27
    :cond_1
    :try_start_1
    iget-byte p1, p2, Lcom/umeng/analytics/pro/dy;->b:B

    if-ne p1, p3, :cond_8

    .line 28
    iget-object p1, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->x()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    iget-object p2, p0, Lcom/umeng/analytics/pro/dh;->b:Lcom/umeng/analytics/pro/eq;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/eq;->e()V

    .line 30
    iget-object p2, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/ed;->B()V

    return-object p1

    .line 31
    :cond_2
    :try_start_2
    iget-byte p1, p2, Lcom/umeng/analytics/pro/dy;->b:B

    if-ne p1, p4, :cond_8

    .line 32
    iget-object p1, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->A()Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    iget-object p2, p0, Lcom/umeng/analytics/pro/dh;->b:Lcom/umeng/analytics/pro/eq;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/eq;->e()V

    .line 34
    iget-object p2, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/ed;->B()V

    return-object p1

    .line 35
    :cond_3
    :try_start_3
    iget-byte p1, p2, Lcom/umeng/analytics/pro/dy;->b:B

    if-ne p1, p3, :cond_8

    .line 36
    iget-object p1, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->w()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 37
    iget-object p2, p0, Lcom/umeng/analytics/pro/dh;->b:Lcom/umeng/analytics/pro/eq;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/eq;->e()V

    .line 38
    iget-object p2, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/ed;->B()V

    return-object p1

    .line 39
    :cond_4
    :try_start_4
    iget-byte p1, p2, Lcom/umeng/analytics/pro/dy;->b:B

    if-ne p1, p3, :cond_8

    .line 40
    iget-object p1, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->v()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 41
    iget-object p2, p0, Lcom/umeng/analytics/pro/dh;->b:Lcom/umeng/analytics/pro/eq;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/eq;->e()V

    .line 42
    iget-object p2, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/ed;->B()V

    return-object p1

    .line 43
    :cond_5
    :try_start_5
    iget-byte p1, p2, Lcom/umeng/analytics/pro/dy;->b:B

    if-ne p1, p3, :cond_8

    .line 44
    iget-object p1, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->y()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 45
    iget-object p2, p0, Lcom/umeng/analytics/pro/dh;->b:Lcom/umeng/analytics/pro/eq;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/eq;->e()V

    .line 46
    iget-object p2, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/ed;->B()V

    return-object p1

    .line 47
    :cond_6
    :try_start_6
    iget-byte p1, p2, Lcom/umeng/analytics/pro/dy;->b:B

    if-ne p1, p3, :cond_8

    .line 48
    iget-object p1, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->u()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 49
    iget-object p2, p0, Lcom/umeng/analytics/pro/dh;->b:Lcom/umeng/analytics/pro/eq;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/eq;->e()V

    .line 50
    iget-object p2, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/ed;->B()V

    return-object p1

    .line 51
    :cond_7
    :try_start_7
    iget-byte p1, p2, Lcom/umeng/analytics/pro/dy;->b:B

    if-ne p1, p3, :cond_8

    .line 52
    iget-object p1, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->t()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 53
    iget-object p2, p0, Lcom/umeng/analytics/pro/dh;->b:Lcom/umeng/analytics/pro/eq;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/eq;->e()V

    .line 54
    iget-object p2, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/ed;->B()V

    return-object p1

    .line 55
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/umeng/analytics/pro/dh;->b:Lcom/umeng/analytics/pro/eq;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/eq;->e()V

    .line 56
    iget-object p1, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->B()V

    const/4 p1, 0x0

    return-object p1

    .line 57
    :goto_1
    :try_start_8
    new-instance p2, Lcom/umeng/analytics/pro/dk;

    invoke-direct {p2, p1}, Lcom/umeng/analytics/pro/dk;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 58
    :goto_2
    iget-object p2, p0, Lcom/umeng/analytics/pro/dh;->b:Lcom/umeng/analytics/pro/eq;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/eq;->e()V

    .line 59
    iget-object p2, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/ed;->B()V

    .line 60
    throw p1
.end method

.method private varargs j([BLcom/umeng/analytics/pro/dl;[Lcom/umeng/analytics/pro/dl;)Lcom/umeng/analytics/pro/dy;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/dk;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/dh;->b:Lcom/umeng/analytics/pro/eq;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/eq;->a([B)V

    .line 4
    .line 5
    .line 6
    array-length p1, p3

    .line 7
    add-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    new-array v0, p1, [Lcom/umeng/analytics/pro/dl;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    aput-object p2, v0, v1

    .line 13
    .line 14
    move p2, v1

    .line 15
    :goto_0
    array-length v2, p3

    .line 16
    if-ge p2, v2, :cond_0

    .line 17
    .line 18
    add-int/lit8 v2, p2, 0x1

    .line 19
    .line 20
    aget-object p2, p3, p2

    .line 21
    .line 22
    aput-object p2, v0, v2

    .line 23
    .line 24
    move p2, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p2, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/ed;->j()Lcom/umeng/analytics/pro/ei;

    .line 29
    .line 30
    .line 31
    const/4 p2, 0x0

    .line 32
    move-object p3, p2

    .line 33
    :cond_1
    :goto_1
    if-ge v1, p1, :cond_5

    .line 34
    .line 35
    iget-object p3, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    .line 36
    .line 37
    invoke-virtual {p3}, Lcom/umeng/analytics/pro/ed;->l()Lcom/umeng/analytics/pro/dy;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    iget-byte v2, p3, Lcom/umeng/analytics/pro/dy;->b:B

    .line 42
    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    iget-short v2, p3, Lcom/umeng/analytics/pro/dy;->c:S

    .line 46
    .line 47
    aget-object v3, v0, v1

    .line 48
    .line 49
    invoke-interface {v3}, Lcom/umeng/analytics/pro/dl;->a()S

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-le v2, v3, :cond_2

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    iget-short v2, p3, Lcom/umeng/analytics/pro/dy;->c:S

    .line 57
    .line 58
    aget-object v3, v0, v1

    .line 59
    .line 60
    invoke-interface {v3}, Lcom/umeng/analytics/pro/dl;->a()S

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eq v2, v3, :cond_3

    .line 65
    .line 66
    iget-object v2, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    .line 67
    .line 68
    iget-byte v3, p3, Lcom/umeng/analytics/pro/dy;->b:B

    .line 69
    .line 70
    invoke-static {v2, v3}, Lcom/umeng/analytics/pro/eg;->a(Lcom/umeng/analytics/pro/ed;B)V

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/umeng/analytics/pro/ed;->m()V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 80
    .line 81
    if-ge v1, p1, :cond_1

    .line 82
    .line 83
    iget-object v2, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/umeng/analytics/pro/ed;->j()Lcom/umeng/analytics/pro/ei;

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    :goto_2
    return-object p2

    .line 90
    :cond_5
    return-object p3
.end method


# virtual methods
.method public varargs a([BLcom/umeng/analytics/pro/dl;[Lcom/umeng/analytics/pro/dl;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/dk;
        }
    .end annotation

    const/4 v0, 0x2

    .line 21
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/dh;->a(B[BLcom/umeng/analytics/pro/dl;[Lcom/umeng/analytics/pro/dl;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public a(Lcom/umeng/analytics/pro/de;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/dk;
        }
    .end annotation

    .line 61
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/dh;->a(Lcom/umeng/analytics/pro/de;[B)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/de;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/dk;
        }
    .end annotation

    .line 8
    :try_start_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/dh;->a(Lcom/umeng/analytics/pro/de;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p1, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->B()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 10
    :catch_0
    :try_start_1
    new-instance p1, Lcom/umeng/analytics/pro/dk;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JVM DOES NOT SUPPORT ENCODING: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/dk;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :goto_0
    iget-object p2, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/ed;->B()V

    .line 12
    throw p1
.end method

.method public a(Lcom/umeng/analytics/pro/de;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/dk;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/dh;->b:Lcom/umeng/analytics/pro/eq;

    invoke-virtual {v0, p2}, Lcom/umeng/analytics/pro/eq;->a([B)V

    .line 2
    iget-object p2, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    invoke-interface {p1, p2}, Lcom/umeng/analytics/pro/de;->read(Lcom/umeng/analytics/pro/ed;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p1, p0, Lcom/umeng/analytics/pro/dh;->b:Lcom/umeng/analytics/pro/eq;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/eq;->e()V

    .line 4
    iget-object p1, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->B()V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    iget-object p2, p0, Lcom/umeng/analytics/pro/dh;->b:Lcom/umeng/analytics/pro/eq;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/eq;->e()V

    .line 6
    iget-object p2, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/ed;->B()V

    .line 7
    throw p1
.end method

.method public varargs a(Lcom/umeng/analytics/pro/de;[BLcom/umeng/analytics/pro/dl;[Lcom/umeng/analytics/pro/dl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/dk;
        }
    .end annotation

    .line 13
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/umeng/analytics/pro/dh;->j([BLcom/umeng/analytics/pro/dl;[Lcom/umeng/analytics/pro/dl;)Lcom/umeng/analytics/pro/dy;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 14
    iget-object p2, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    invoke-interface {p1, p2}, Lcom/umeng/analytics/pro/de;->read(Lcom/umeng/analytics/pro/ed;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/umeng/analytics/pro/dh;->b:Lcom/umeng/analytics/pro/eq;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/eq;->e()V

    .line 16
    iget-object p1, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->B()V

    return-void

    .line 17
    :goto_1
    :try_start_1
    new-instance p2, Lcom/umeng/analytics/pro/dk;

    invoke-direct {p2, p1}, Lcom/umeng/analytics/pro/dk;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :goto_2
    iget-object p2, p0, Lcom/umeng/analytics/pro/dh;->b:Lcom/umeng/analytics/pro/eq;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/eq;->e()V

    .line 19
    iget-object p2, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/ed;->B()V

    .line 20
    throw p1
.end method

.method public varargs b([BLcom/umeng/analytics/pro/dl;[Lcom/umeng/analytics/pro/dl;)Ljava/lang/Byte;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/dk;
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/dh;->a(B[BLcom/umeng/analytics/pro/dl;[Lcom/umeng/analytics/pro/dl;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    check-cast p1, Ljava/lang/Byte;

    .line 7
    .line 8
    return-object p1
.end method

.method public varargs c([BLcom/umeng/analytics/pro/dl;[Lcom/umeng/analytics/pro/dl;)Ljava/lang/Double;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/dk;
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/dh;->a(B[BLcom/umeng/analytics/pro/dl;[Lcom/umeng/analytics/pro/dl;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    check-cast p1, Ljava/lang/Double;

    .line 7
    .line 8
    return-object p1
.end method

.method public varargs d([BLcom/umeng/analytics/pro/dl;[Lcom/umeng/analytics/pro/dl;)Ljava/lang/Short;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/dk;
        }
    .end annotation

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/dh;->a(B[BLcom/umeng/analytics/pro/dl;[Lcom/umeng/analytics/pro/dl;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    check-cast p1, Ljava/lang/Short;

    .line 7
    .line 8
    return-object p1
.end method

.method public varargs e([BLcom/umeng/analytics/pro/dl;[Lcom/umeng/analytics/pro/dl;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/dk;
        }
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/dh;->a(B[BLcom/umeng/analytics/pro/dl;[Lcom/umeng/analytics/pro/dl;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 8
    .line 9
    return-object p1
.end method

.method public varargs f([BLcom/umeng/analytics/pro/dl;[Lcom/umeng/analytics/pro/dl;)Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/dk;
        }
    .end annotation

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/dh;->a(B[BLcom/umeng/analytics/pro/dl;[Lcom/umeng/analytics/pro/dl;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Long;

    .line 8
    .line 9
    return-object p1
.end method

.method public varargs g([BLcom/umeng/analytics/pro/dl;[Lcom/umeng/analytics/pro/dl;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/dk;
        }
    .end annotation

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/dh;->a(B[BLcom/umeng/analytics/pro/dl;[Lcom/umeng/analytics/pro/dl;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    return-object p1
.end method

.method public varargs h([BLcom/umeng/analytics/pro/dl;[Lcom/umeng/analytics/pro/dl;)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/dk;
        }
    .end annotation

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/dh;->a(B[BLcom/umeng/analytics/pro/dl;[Lcom/umeng/analytics/pro/dl;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    return-object p1
.end method

.method public varargs i([BLcom/umeng/analytics/pro/dl;[Lcom/umeng/analytics/pro/dl;)Ljava/lang/Short;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/dk;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/analytics/pro/dh;->j([BLcom/umeng/analytics/pro/dl;[Lcom/umeng/analytics/pro/dl;)Lcom/umeng/analytics/pro/dy;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->j()Lcom/umeng/analytics/pro/ei;

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->l()Lcom/umeng/analytics/pro/dy;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-short p1, p1, Lcom/umeng/analytics/pro/dy;->c:S

    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 21
    .line 22
    .line 23
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    iget-object p2, p0, Lcom/umeng/analytics/pro/dh;->b:Lcom/umeng/analytics/pro/eq;

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/eq;->e()V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/ed;->B()V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :catch_0
    move-exception p1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/umeng/analytics/pro/dh;->b:Lcom/umeng/analytics/pro/eq;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/eq;->e()V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ed;->B()V

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    return-object p1

    .line 51
    :goto_0
    :try_start_1
    new-instance p2, Lcom/umeng/analytics/pro/dk;

    .line 52
    .line 53
    invoke-direct {p2, p1}, Lcom/umeng/analytics/pro/dk;-><init>(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :goto_1
    iget-object p2, p0, Lcom/umeng/analytics/pro/dh;->b:Lcom/umeng/analytics/pro/eq;

    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/eq;->e()V

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Lcom/umeng/analytics/pro/dh;->a:Lcom/umeng/analytics/pro/ed;

    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/ed;->B()V

    .line 65
    .line 66
    .line 67
    throw p1
.end method
