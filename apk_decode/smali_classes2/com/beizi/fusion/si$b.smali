.class Lcom/beizi/fusion/si$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/si;->a(Lcom/beizi/fusion/pi;Landroid/view/View;Ljava/util/List;Lcom/beizi/fusion/mi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/pi;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/beizi/fusion/mi;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/pi;Landroid/view/View;Ljava/util/List;Lcom/beizi/fusion/mi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/si$b;->a:Lcom/beizi/fusion/pi;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/beizi/fusion/si$b;->b:Landroid/view/View;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/beizi/fusion/si$b;->c:Ljava/util/List;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/beizi/fusion/si$b;->d:Lcom/beizi/fusion/mi;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/si$b;->a:Lcom/beizi/fusion/pi;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/beizi/fusion/si$b;->b:Landroid/view/View;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/beizi/fusion/si$b;->c:Ljava/util/List;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/beizi/fusion/si$b;->d:Lcom/beizi/fusion/mi;

    .line 8
    .line 9
    invoke-interface {v0, v1, v2, v3}, Lcom/beizi/fusion/pi;->a(Landroid/view/View;Ljava/util/List;Lcom/beizi/fusion/mi;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/beizi/fusion/si$b;->a:Lcom/beizi/fusion/pi;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/beizi/fusion/si$b;->b:Landroid/view/View;

    .line 23
    .line 24
    sget v2, Lcom/beizi/fusion/R$string;->beizi_native_tag:I

    .line 25
    .line 26
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
