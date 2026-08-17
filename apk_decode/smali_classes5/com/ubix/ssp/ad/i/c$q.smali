.class Lcom/ubix/ssp/ad/i/c$q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/y/e/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "q"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/ubix/ssp/ad/d/a;

.field final synthetic d:Lcom/ubix/ssp/ad/i/c;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/i/c;Lcom/ubix/ssp/ad/d/a;Landroid/view/ViewGroup;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/c$q;->d:Lcom/ubix/ssp/ad/i/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/c$q;->a:Ljava/lang/ref/SoftReference;

    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/c$q;->b:Ljava/lang/ref/SoftReference;

    iput-object p2, p0, Lcom/ubix/ssp/ad/i/c$q;->c:Lcom/ubix/ssp/ad/d/a;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c$q;->a:Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c$q;->d:Lcom/ubix/ssp/ad/i/c;

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$q;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$q;->c:Lcom/ubix/ssp/ad/d/a;

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/c$q;->b:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;Landroid/view/View;Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method
