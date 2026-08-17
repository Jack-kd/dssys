.class Lcom/beizi/fusion/widget/JSView$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/widget/JSView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/widget/JSView;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/widget/JSView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/widget/JSView$a;->a:Lcom/beizi/fusion/widget/JSView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/beizi/fusion/widget/JSView$a;->a:Lcom/beizi/fusion/widget/JSView;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/beizi/fusion/widget/JSView;->a(Lcom/beizi/fusion/widget/JSView;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-lez p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/beizi/fusion/widget/JSView$a;->a:Lcom/beizi/fusion/widget/JSView;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/beizi/fusion/widget/JSView;->load()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/beizi/fusion/widget/JSView$a;->a:Lcom/beizi/fusion/widget/JSView;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/beizi/fusion/widget/JSView;->b(Lcom/beizi/fusion/widget/JSView;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
