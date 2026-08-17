.class Lcom/ubix/ssp/ad/a$g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/d/a;

.field final synthetic b:Lcom/ubix/ssp/ad/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/a;Lcom/ubix/ssp/ad/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/a$g;->b:Lcom/ubix/ssp/ad/a;

    iput-object p2, p0, Lcom/ubix/ssp/ad/a$g;->a:Lcom/ubix/ssp/ad/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$g;->b:Lcom/ubix/ssp/ad/a;

    iget-object p2, p0, Lcom/ubix/ssp/ad/a$g;->a:Lcom/ubix/ssp/ad/d/a;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Lcom/ubix/ssp/ad/a;->a(I[Ljava/lang/Object;)V

    return-void
.end method

.method public b(J)V
    .locals 0

    return-void
.end method
