.class Lcom/sigmob/sdk/mraid2/q$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid2/q;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid2/q;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/mraid2/q;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/q$1;->a:Lcom/sigmob/sdk/mraid2/q;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/q$1;->a:Lcom/sigmob/sdk/mraid2/q;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/q;->a(Lcom/sigmob/sdk/mraid2/q;)Lcom/sigmob/sdk/mraid2/d;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/q$1;->a:Lcom/sigmob/sdk/mraid2/q;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid2/q;->b(Lcom/sigmob/sdk/mraid2/q;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid2/d;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid2/q$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid2/q$1;->a()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/q$1;->a:Lcom/sigmob/sdk/mraid2/q;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/q;->a(Lcom/sigmob/sdk/mraid2/q;)Lcom/sigmob/sdk/mraid2/d;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/q$1;->a:Lcom/sigmob/sdk/mraid2/q;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/q;->a(Lcom/sigmob/sdk/mraid2/q;)Lcom/sigmob/sdk/mraid2/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid2/d;->a()Lcom/sigmob/sdk/mraid2/c;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/mraid2/N;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid2/N;-><init>(Lcom/sigmob/sdk/mraid2/q$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
