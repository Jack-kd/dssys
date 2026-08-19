.class Lcom/ubix/ssp/ad/j/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/v/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/j/b;->c(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/ubix/ssp/ad/j/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/j/b;Z)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/j/b$a;->b:Lcom/ubix/ssp/ad/j/b;

    iput-boolean p2, p0, Lcom/ubix/ssp/ad/j/b$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ubix/ssp/ad/e/v/e;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/ubix/ssp/ad/j/b$a;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/b$a;->b:Lcom/ubix/ssp/ad/j/b;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/j/b;->q(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/ubix/ssp/open/AdError;)V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/j/b$a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b$a;->b:Lcom/ubix/ssp/ad/j/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/ubix/ssp/ad/j/b;->a(ILcom/ubix/ssp/open/AdError;)V

    :cond_0
    return-void
.end method
