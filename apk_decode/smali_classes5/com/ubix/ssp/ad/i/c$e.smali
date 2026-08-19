.class Lcom/ubix/ssp/ad/i/c$e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;Landroid/view/ViewGroup;Ljava/util/List;Landroid/view/View;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/ubix/ssp/ad/d/a;

.field final synthetic c:Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;

.field final synthetic d:Lcom/ubix/ssp/ad/i/c;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/i/c;Landroid/view/ViewGroup;Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/c$e;->d:Lcom/ubix/ssp/ad/i/c;

    iput-object p2, p0, Lcom/ubix/ssp/ad/i/c$e;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/ubix/ssp/ad/i/c$e;->b:Lcom/ubix/ssp/ad/d/a;

    iput-object p4, p0, Lcom/ubix/ssp/ad/i/c$e;->c:Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 4

    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c$e;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c$e;->d:Lcom/ubix/ssp/ad/i/c;

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$e;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$e;->b:Lcom/ubix/ssp/ad/d/a;

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/c$e;->c:Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;Landroid/view/View;Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
