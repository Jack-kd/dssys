.class Lcom/ubix/ssp/ad/c/c/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/c/c/b;->a(Landroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/b0/g;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/ubix/ssp/ad/c/c/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/c/c/b;Lcom/ubix/ssp/ad/e/b0/g;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/c/c/b$a;->c:Lcom/ubix/ssp/ad/c/c/b;

    iput-object p2, p0, Lcom/ubix/ssp/ad/c/c/b$a;->a:Lcom/ubix/ssp/ad/e/b0/g;

    iput-object p3, p0, Lcom/ubix/ssp/ad/c/c/b$a;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/ad/c/c/b$a;->a:Lcom/ubix/ssp/ad/e/b0/g;

    iget-object v1, p0, Lcom/ubix/ssp/ad/c/c/b$a;->b:Landroid/os/Bundle;

    const-string v2, "VIDEO_URL"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/ubix/ssp/ad/e/b0/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/c/c/b$a;->a:Lcom/ubix/ssp/ad/e/b0/g;

    new-instance v1, Lcom/ubix/ssp/ad/c/c/b$a$a;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/c/c/b$a$a;-><init>(Lcom/ubix/ssp/ad/c/c/b$a;)V

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/b0/e;->setVideoViewListener(Lcom/ubix/ssp/ad/g/k/j;)V

    return-void
.end method
