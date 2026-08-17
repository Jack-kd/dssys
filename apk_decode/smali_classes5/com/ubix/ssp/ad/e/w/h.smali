.class public Lcom/ubix/ssp/ad/e/w/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Z = false

.field private static b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([BI)I
    .locals 3

    .line 1
    add-int/lit16 p1, p1, 0xfa0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    move v0, p1

    :goto_0
    add-int/lit16 v1, p1, -0xfa0

    if-le v0, v1, :cond_1

    aget-byte v1, p0, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public static a(Ljava/lang/Exception;)V
    .locals 2

    .line 2
    sget-boolean v0, Lcom/ubix/ssp/ad/e/w/h;->b:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/ubix/ssp/ad/e/w/h;->c:Z

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    const-string v0, "Monitor.Exception"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    sget-boolean v0, Lcom/ubix/ssp/ad/e/w/h;->a:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/ubix/ssp/ad/e/w/h;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/ubix/ssp/ad/e/w/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 4
    sget-boolean v0, Lcom/ubix/ssp/ad/e/w/h;->b:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/ubix/ssp/ad/e/w/h;->c:Z

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/ubix/ssp/ad/e/w/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 5
    sput-boolean p0, Lcom/ubix/ssp/ad/e/w/h;->c:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 6
    sget-boolean v0, Lcom/ubix/ssp/ad/e/w/h;->b:Z

    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ubix/ssp/ad/e/w/h;->b:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/ubix/ssp/ad/e/w/h;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/ubix/ssp/ad/e/w/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 2
    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p1, p0

    const/16 p2, 0xfa0

    if-gt p1, p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit16 v1, p1, -0xfa0

    if-ge v0, v1, :cond_2

    invoke-static {p0, v0}, Lcom/ubix/ssp/ad/e/w/h;->a([BI)I

    move-result v1

    sub-int v2, v1, v0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0, v0, v2}, Ljava/lang/String;-><init>([BII)V

    if-ge v2, p2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-le p1, v0, :cond_3

    new-instance p2, Ljava/lang/String;

    sub-int/2addr p1, v0

    invoke-direct {p2, p0, v0, p1}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/Exception;)V

    :cond_4
    return-void
.end method

.method public static b(Z)V
    .locals 0

    .line 3
    sput-boolean p0, Lcom/ubix/ssp/ad/e/w/h;->b:Z

    return-void
.end method
