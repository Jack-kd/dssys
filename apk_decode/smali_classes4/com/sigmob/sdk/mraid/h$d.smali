.class Lcom/sigmob/sdk/mraid/h$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/mraid/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/mraid/h$d$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Lcom/sigmob/sdk/mraid/h$d$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/h$d;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public varargs a([Landroid/view/View;)Lcom/sigmob/sdk/mraid/h$d$a;
    .locals 3

    .line 1
    new-instance v0, Lcom/sigmob/sdk/mraid/h$d$a;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h$d;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/sigmob/sdk/mraid/h$d$a;-><init>(Landroid/os/Handler;[Landroid/view/View;Lcom/sigmob/sdk/mraid/h$1;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/h$d;->b:Lcom/sigmob/sdk/mraid/h$d$a;

    return-object v0
.end method

.method public a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$d;->b:Lcom/sigmob/sdk/mraid/h$d$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/h$d$a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/h$d;->b:Lcom/sigmob/sdk/mraid/h$d$a;

    return-void
.end method
