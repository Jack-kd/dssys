.class public Lcom/ubix/ssp/ad/e/a0/a0/a;
.super Lcom/ubix/ssp/open/AdError;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ubix/ssp/open/AdError;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->b:Ljava/lang/String;

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->g:Z

    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/ubix/ssp/open/AdError;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->g:Z

    iput-object p4, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->f:Ljava/lang/String;

    iput p1, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->c:I

    iput p2, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->d:I

    iput p3, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->e:I

    return-void
.end method

.method public static a(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;
    .locals 3

    .line 1
    new-instance v0, Lcom/ubix/ssp/ad/e/a0/a0/a;

    const/4 v1, 0x6

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/ubix/ssp/ad/e/a0/a0/a;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method public static b(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;
    .locals 3

    .line 1
    new-instance v0, Lcom/ubix/ssp/ad/e/a0/a0/a;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/ubix/ssp/ad/e/a0/a0/a;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method private b()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->g:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",ErrorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;
    .locals 3

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/a0/a;

    const/4 v1, 0x4

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/ubix/ssp/ad/e/a0/a0/a;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method public static d(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;
    .locals 2

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/a0/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1, v1, p0, p1}, Lcom/ubix/ssp/ad/e/a0/a0/a;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method public static e(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;
    .locals 2

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/a0/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1, p0, p1}, Lcom/ubix/ssp/ad/e/a0/a0/a;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method public static f(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;
    .locals 3

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/a0/a;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/ubix/ssp/ad/e/a0/a0/a;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method public static g(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;
    .locals 3

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/a0/a;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/ubix/ssp/ad/e/a0/a0/a;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method public static h(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;
    .locals 3

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/a0/a;

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/ubix/ssp/ad/e/a0/a0/a;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method public static i(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;
    .locals 2

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/a0/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v1, p0, p1}, Lcom/ubix/ssp/ad/e/a0/a0/a;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method public static j(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;
    .locals 3

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/a0/a;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/ubix/ssp/ad/e/a0/a0/a;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method public static k(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;
    .locals 3

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/a0/a;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/ubix/ssp/ad/e/a0/a0/a;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->e:I

    div-int/lit8 v3, v2, 0xa

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->e:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()I
    .locals 5

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->b()V

    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v0, v2, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->e:I

    if-eq v0, v4, :cond_1

    goto/16 :goto_3

    :cond_1
    const/16 v0, 0x7533

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->a:I

    const-string v0, "\u540c\u4e00\u6761\u5e7f\u544a\u8bf7\u52ff\u591a\u6b21\u5c55\u793a [code:%s]"

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->e:I

    const/16 v1, 0x7534

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x7537

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->a:I

    const-string v0, "\u6e32\u67d3\u5f02\u5e38 [code:%s]"

    goto :goto_1

    :pswitch_0
    iput v1, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->a:I

    const-string v0, "\u6a21\u677f\u6e32\u67d3\u5931\u8d25 [code:%s]"

    goto :goto_1

    :pswitch_1
    iput v1, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->a:I

    const-string v0, "\u8d44\u6e90\u4e0b\u8f7d\u5931\u8d25 [code:%s]"

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x7532

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->a:I

    const-string v0, "\u5e7f\u544a\u5df2\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u8bf7\u6c42\u65b0\u5e7f\u544a [code:%s]"

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x7536

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->a:I

    const-string v0, "\u89c6\u9891\u64ad\u653e\u4e2d\u51fa\u9519 [code:%s]"

    goto :goto_1

    :pswitch_4
    const/16 v0, 0x7535

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->a:I

    const-string v0, "\u89c6\u9891\u52a0\u8f7d\u51fa\u9519 [code:%s]"

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->e:I

    const-string v1, "\u65e0\u586b\u5145\uff0c\u8bf7\u52ff\u9891\u7e41\u91cd\u8bd5 [code:%s]"

    const/16 v2, 0x4e21

    packed-switch v0, :pswitch_data_1

    :pswitch_5
    goto/16 :goto_3

    :pswitch_6
    iput v2, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->a:I

    :goto_0
    move-object v0, v1

    goto :goto_1

    :pswitch_7
    iput v2, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->a:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->a()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->b:Ljava/lang/String;

    goto/16 :goto_3

    :pswitch_8
    const/16 v0, 0x4e23

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->a:I

    const-string v0, "\u8bf7\u6c42\u8d85\u65f6 [code:%s]"

    goto :goto_1

    :pswitch_9
    const/16 v0, 0x4e22

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->a:I

    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38 [code:%s]"

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->e:I

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_5

    goto :goto_3

    :cond_5
    const v0, 0xea61

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->a:I

    const-string v0, "\u6fc0\u52b1\u89c6\u9891\u5956\u52b1\u83b7\u53d6\u5931\u8d25 [code:%s]"

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->e:I

    const-string v1, "\u4f20\u5165\u53c2\u6570\u6709\u8bef\uff0c\u8bf7\u67e5\u770blogcat\u68c0\u67e5 [code:%s]"

    packed-switch v0, :pswitch_data_2

    :pswitch_a
    const/16 v0, 0x2717

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->a:I

    const-string v0, "\u8bf7\u6c42\u53d1\u751f\u9519\u8bef [code:%s]"

    goto :goto_1

    :pswitch_b
    const/16 v0, 0x2719

    :goto_2
    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->a:I

    goto :goto_0

    :pswitch_c
    const/16 v0, 0x2715

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->a:I

    const-string v0, "SDK\u5df2\u5173\u95ed\uff0c\u8bf7\u52ff\u91cd\u590d\u8bf7\u6c42 [code:%s]"

    goto :goto_1

    :pswitch_d
    const/16 v0, 0x2714

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->a:I

    const-string v0, "SDK\u672a\u521d\u59cb\u5316\uff0c\u8bf7\u5148\u521d\u59cb\u5316SDK [code:%s]"

    goto :goto_1

    :pswitch_e
    const/16 v0, 0x2718

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->a:I

    const-string v0, "\u8bf7\u52ff\u9891\u7e41\u8bf7\u6c42 [code:%s]"

    goto :goto_1

    :pswitch_f
    const/16 v0, 0x7531

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->a:I

    const-string v0, "Activity\u4e3a\u7a7a\uff0c\u6216\u5e7f\u544a\u4e0d\u53ef\u89c1 [code:%s]"

    goto :goto_1

    :pswitch_10
    const/16 v0, 0x2716

    goto :goto_2

    :pswitch_11
    const/16 v0, 0x2713

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->a:I

    const-string v0, "AdSize\u53c2\u6570\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u5bf9\u5e94\u7684\u503c\u662f\u5426\u4f20\u5165\u6b63\u786e [code:%s]"

    goto :goto_1

    :pswitch_12
    const/16 v0, 0x2712

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->a:I

    const-string v0, "POS_ID\u4e3a\u7a7a\uff0c\u8bf7\u68c0\u67e5\u5bf9\u5e94\u7684\u503c\u662f\u5426\u4f20\u5165\u6b63\u786e [code:%s]"

    goto :goto_1

    :pswitch_13
    const/16 v0, 0x2711

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->a:I

    const-string v0, "APP_ID\u4e3a\u7a7a\uff0c\u8bf7\u68c0\u67e5\u5bf9\u5e94\u7684\u503c\u662f\u5426\u4f20\u5165\u6b63\u786e [code:%s]"

    goto :goto_1

    :goto_3
    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->a:I

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_a
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->getErrorCode()I

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->b:Ljava/lang/String;

    const-string v1, "[code:%s]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->a()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->b:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/a;->b:Ljava/lang/String;

    return-object v0
.end method
