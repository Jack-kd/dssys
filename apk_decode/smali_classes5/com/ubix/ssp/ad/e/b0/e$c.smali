.class public Lcom/ubix/ssp/ad/e/b0/e$c;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/b0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ubix/ssp/ad/e/b0/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/b0/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a()Lcom/ubix/ssp/ad/e/b0/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$c;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/e/b0/e;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/b0/e$c;)Lcom/ubix/ssp/ad/e/b0/e;
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/b0/e$c;->a()Lcom/ubix/ssp/ad/e/b0/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/b0/e$c;->a()Lcom/ubix/ssp/ad/e/b0/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/b0/e$c;->a()Lcom/ubix/ssp/ad/e/b0/e;

    move-result-object v0

    new-instance v1, Lcom/ubix/ssp/ad/e/b0/e$c$a;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/e/b0/e$c$a;-><init>(Lcom/ubix/ssp/ad/e/b0/e$c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
