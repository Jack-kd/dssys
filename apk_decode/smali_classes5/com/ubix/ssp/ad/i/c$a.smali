.class Lcom/ubix/ssp/ad/i/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;Landroid/view/ViewGroup;Ljava/util/List;Landroid/view/View;FLcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/ubix/ssp/ad/d/a;

.field final synthetic c:F

.field final synthetic d:Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;

.field final synthetic e:Lcom/ubix/ssp/ad/i/c;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/i/c;Landroid/view/ViewGroup;Lcom/ubix/ssp/ad/d/a;FLcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/c$a;->e:Lcom/ubix/ssp/ad/i/c;

    iput-object p2, p0, Lcom/ubix/ssp/ad/i/c$a;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/ubix/ssp/ad/i/c$a;->b:Lcom/ubix/ssp/ad/d/a;

    iput p4, p0, Lcom/ubix/ssp/ad/i/c$a;->c:F

    iput-object p5, p0, Lcom/ubix/ssp/ad/i/c$a;->d:Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 4

    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c$a;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c$a;->e:Lcom/ubix/ssp/ad/i/c;

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$a;->b:Lcom/ubix/ssp/ad/d/a;

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$a;->a:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/ubix/ssp/ad/i/c$a;->c:F

    iget-object v3, p0, Lcom/ubix/ssp/ad/i/c$a;->d:Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;Lcom/ubix/ssp/ad/d/a;Landroid/view/ViewGroup;FLcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
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
