.class Lcom/beizi/fusion/kn$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/kn;->a(IILcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickPositionBean;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/kn;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/kn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/kn$c;->a:Lcom/beizi/fusion/kn;

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
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/kn$c;->a:Lcom/beizi/fusion/kn;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/beizi/fusion/kn;->g:Lcom/beizi/fusion/widget/ScrollClickView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/beizi/fusion/widget/ScrollClickView;->startAnim()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    :cond_0
    return-void
.end method
