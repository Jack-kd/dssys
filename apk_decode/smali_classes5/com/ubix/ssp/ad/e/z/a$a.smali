.class Lcom/ubix/ssp/ad/e/z/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/v/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/z/a;->setData(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/z/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/z/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/a$a;->a:Lcom/ubix/ssp/ad/e/z/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ubix/ssp/ad/e/v/e;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    const-string p1, "onResourcesLoaded"

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ubix/ssp/open/AdError;)V
    .locals 0

    .line 2
    const-string p1, "onResourcesLoadFailed"

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    return-void
.end method
