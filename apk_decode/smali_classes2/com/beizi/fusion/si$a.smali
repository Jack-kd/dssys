.class Lcom/beizi/fusion/si$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/si;->a(Lcom/beizi/fusion/pi;Landroid/view/View;Lcom/beizi/fusion/mi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/pi;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/beizi/fusion/mi;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/pi;Landroid/view/View;Lcom/beizi/fusion/mi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/si$a;->a:Lcom/beizi/fusion/pi;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/beizi/fusion/si$a;->b:Landroid/view/View;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/beizi/fusion/si$a;->c:Lcom/beizi/fusion/mi;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/si$a;->a:Lcom/beizi/fusion/pi;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/beizi/fusion/si$a;->b:Landroid/view/View;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/beizi/fusion/si$a;->c:Lcom/beizi/fusion/mi;

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Lcom/beizi/fusion/pi;->a(Landroid/view/View;Lcom/beizi/fusion/mi;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/si$a;->a:Lcom/beizi/fusion/pi;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/beizi/fusion/si$a;->b:Landroid/view/View;

    .line 21
    .line 22
    sget v2, Lcom/beizi/fusion/R$string;->beizi_native_tag:I

    .line 23
    .line 24
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
