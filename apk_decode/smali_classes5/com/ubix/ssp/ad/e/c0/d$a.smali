.class Lcom/ubix/ssp/ad/e/c0/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/c0/d;->a(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/ubix/ssp/ad/e/c0/d;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/c0/d;Landroid/webkit/WebView;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/c0/d$a;->d:Lcom/ubix/ssp/ad/e/c0/d;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/c0/d$a;->a:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/c0/d$a;->b:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/ubix/ssp/ad/e/c0/d$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/c0/d$a;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/c0/d$a;->b:Landroid/os/Bundle;

    new-instance v2, Lcom/ubix/ssp/ad/e/c0/d$a$a;

    invoke-direct {v2, p0}, Lcom/ubix/ssp/ad/e/c0/d$a$a;-><init>(Lcom/ubix/ssp/ad/e/c0/d$a;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/ubix/ssp/ad/e/z/h$c;Lcom/ubix/ssp/ad/e/z/h$b;)Z

    return-void
.end method
