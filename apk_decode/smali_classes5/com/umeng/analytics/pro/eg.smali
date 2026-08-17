.class public Lcom/umeng/analytics/pro/eg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I = 0x7fffffff


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

.method public static a([BLcom/umeng/analytics/pro/ef;)Lcom/umeng/analytics/pro/ef;
    .locals 2

    const/4 v0, 0x0

    .line 30
    aget-byte v0, p0, v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 31
    new-instance p0, Lcom/umeng/analytics/pro/dx$a;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/dx$a;-><init>()V

    return-object p0

    .line 32
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_1

    .line 33
    new-instance p0, Lcom/umeng/analytics/pro/dx$a;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/dx$a;-><init>()V

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static a(I)V
    .locals 0

    .line 1
    sput p0, Lcom/umeng/analytics/pro/eg;->a:I

    return-void
.end method

.method public static a(Lcom/umeng/analytics/pro/ed;B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/dk;
        }
    .end annotation

    .line 2
    sget v0, Lcom/umeng/analytics/pro/eg;->a:I

    invoke-static {p0, p1, v0}, Lcom/umeng/analytics/pro/eg;->a(Lcom/umeng/analytics/pro/ed;BI)V

    return-void
.end method

.method public static a(Lcom/umeng/analytics/pro/ed;BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/dk;
        }
    .end annotation

    if-lez p2, :cond_4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-void

    .line 3
    :pswitch_1
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ed;->p()Lcom/umeng/analytics/pro/dz;

    move-result-object p1

    .line 4
    :goto_0
    iget v1, p1, Lcom/umeng/analytics/pro/dz;->b:I

    if-ge v0, v1, :cond_0

    .line 5
    iget-byte v1, p1, Lcom/umeng/analytics/pro/dz;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/umeng/analytics/pro/eg;->a(Lcom/umeng/analytics/pro/ed;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ed;->q()V

    return-void

    .line 7
    :pswitch_2
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ed;->r()Lcom/umeng/analytics/pro/eh;

    move-result-object p1

    .line 8
    :goto_1
    iget v1, p1, Lcom/umeng/analytics/pro/eh;->b:I

    if-ge v0, v1, :cond_1

    .line 9
    iget-byte v1, p1, Lcom/umeng/analytics/pro/eh;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/umeng/analytics/pro/eg;->a(Lcom/umeng/analytics/pro/ed;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ed;->s()V

    return-void

    .line 11
    :pswitch_3
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ed;->n()Lcom/umeng/analytics/pro/ea;

    move-result-object p1

    .line 12
    :goto_2
    iget v1, p1, Lcom/umeng/analytics/pro/ea;->c:I

    if-ge v0, v1, :cond_2

    .line 13
    iget-byte v1, p1, Lcom/umeng/analytics/pro/ea;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/umeng/analytics/pro/eg;->a(Lcom/umeng/analytics/pro/ed;BI)V

    .line 14
    iget-byte v1, p1, Lcom/umeng/analytics/pro/ea;->b:B

    invoke-static {p0, v1, v2}, Lcom/umeng/analytics/pro/eg;->a(Lcom/umeng/analytics/pro/ed;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ed;->o()V

    return-void

    .line 16
    :pswitch_4
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ed;->j()Lcom/umeng/analytics/pro/ei;

    .line 17
    :goto_3
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ed;->l()Lcom/umeng/analytics/pro/dy;

    move-result-object p1

    .line 18
    iget-byte p1, p1, Lcom/umeng/analytics/pro/dy;->b:B

    if-nez p1, :cond_3

    .line 19
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ed;->k()V

    return-void

    :cond_3
    add-int/lit8 v0, p2, -0x1

    .line 20
    invoke-static {p0, p1, v0}, Lcom/umeng/analytics/pro/eg;->a(Lcom/umeng/analytics/pro/ed;BI)V

    .line 21
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ed;->m()V

    goto :goto_3

    .line 22
    :pswitch_5
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ed;->A()Ljava/nio/ByteBuffer;

    return-void

    .line 23
    :pswitch_6
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ed;->x()J

    return-void

    .line 24
    :pswitch_7
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ed;->w()I

    return-void

    .line 25
    :pswitch_8
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ed;->v()S

    return-void

    .line 26
    :pswitch_9
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ed;->y()D

    return-void

    .line 27
    :pswitch_a
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ed;->u()B

    return-void

    .line 28
    :pswitch_b
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/ed;->t()Z

    return-void

    .line 29
    :cond_4
    new-instance p0, Lcom/umeng/analytics/pro/dk;

    const-string p1, "Maximum skip depth exceeded"

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/dk;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
