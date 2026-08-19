.class Lcom/beizi/fusion/h4$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/h4;->d1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/h4;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/h4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/h4$m;->a:Lcom/beizi/fusion/h4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/h4$m;->a:Lcom/beizi/fusion/h4;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/h4;->u(Lcom/beizi/fusion/h4;)Lcom/beizi/fusion/ji;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/beizi/fusion/h4$m;->a:Lcom/beizi/fusion/h4;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/beizi/fusion/h4;->I(Lcom/beizi/fusion/h4;)Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;->getOptimizeSize()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lcom/beizi/fusion/h4$m;->a:Lcom/beizi/fusion/h4;

    .line 18
    .line 19
    invoke-static {v2}, Lcom/beizi/fusion/h4;->g(Lcom/beizi/fusion/h4;)Lcom/beizi/fusion/widget/BZVideoView;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lcom/beizi/fusion/h4$m;->a:Lcom/beizi/fusion/h4;

    .line 24
    .line 25
    invoke-static {v3}, Lcom/beizi/fusion/h4;->H(Lcom/beizi/fusion/h4;)Landroid/view/ViewGroup;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v4, p0, Lcom/beizi/fusion/h4$m;->a:Lcom/beizi/fusion/h4;

    .line 30
    .line 31
    invoke-static {v4}, Lcom/beizi/fusion/h4;->I(Lcom/beizi/fusion/h4;)Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;->getDirection()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/beizi/fusion/ji;->a(ILandroid/view/View;Landroid/view/View;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
