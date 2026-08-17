.class Lcom/sigmob/sdk/base/views/ao$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/ao;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/views/ao;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/views/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/ao$1;->a:Lcom/sigmob/sdk/base/views/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ao$1;->a:Lcom/sigmob/sdk/base/views/ao;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ao$1;->a:Lcom/sigmob/sdk/base/views/ao;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/ao;->a(Lcom/sigmob/sdk/base/views/ao;)V

    return-void
.end method
