.class public Lcom/ubix/ssp/ad/e/a0/e0/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/a0/e0/a$c;
    }
.end annotation


# instance fields
.field a:Lcom/ubix/ssp/ad/e/a0/g;

.field private b:Lcom/ubix/ssp/ad/e/a0/e0/a$c;

.field private c:Ljava/lang/String;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/e0/a;->a:Lcom/ubix/ssp/ad/e/a0/g;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/e0/a;->b:Lcom/ubix/ssp/ad/e/a0/e0/a$c;

    const-string v0, ""

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/e0/a;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/e0/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/g;

    int-to-long v1, p2

    invoke-direct {v0, v1, v2}, Lcom/ubix/ssp/ad/e/a0/g;-><init>(J)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/e0/a;->a:Lcom/ubix/ssp/ad/e/a0/g;

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/e0/a;->c:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/a0/e0/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/e/a0/e0/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/e/a0/e0/a;)Lcom/ubix/ssp/ad/e/a0/e0/a$c;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/e/a0/e0/a;->b:Lcom/ubix/ssp/ad/e/a0/e0/a$c;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/e0/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/e0/a;->b:Lcom/ubix/ssp/ad/e/a0/e0/a$c;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const-string v2, "\u5956\u52b1\u8fd4\u56de\u5f02\u5e38"

    invoke-static {v1, v2}, Lcom/ubix/ssp/ad/e/a0/a0/a;->a(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v1

    const-string v2, "url is null"

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/ubix/ssp/ad/e/a0/e0/a$c;->a(Lcom/ubix/ssp/open/AdError;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/e0/a;->a:Lcom/ubix/ssp/ad/e/a0/g;

    new-instance v1, Lcom/ubix/ssp/ad/e/a0/e0/a$a;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/e/a0/e0/a$a;-><init>(Lcom/ubix/ssp/ad/e/a0/e0/a;)V

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/a0/g;->a(Lcom/ubix/ssp/ad/e/a0/g$b;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/e0/a;->a:Lcom/ubix/ssp/ad/e/a0/g;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/g;->e()V

    invoke-static {}, Lcom/ubix/ssp/ad/e/x/g;->b()Lcom/ubix/ssp/ad/e/x/g;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/e0/a;->c:Ljava/lang/String;

    new-instance v2, Lcom/ubix/ssp/ad/e/a0/e0/a$b;

    invoke-direct {v2, p0}, Lcom/ubix/ssp/ad/e/a0/e0/a$b;-><init>(Lcom/ubix/ssp/ad/e/a0/e0/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/ubix/ssp/ad/e/x/g;->b(Ljava/lang/String;Lcom/ubix/ssp/ad/e/x/a;)V

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/a0/e0/a$c;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/e0/a;->b:Lcom/ubix/ssp/ad/e/a0/e0/a$c;

    return-void
.end method
