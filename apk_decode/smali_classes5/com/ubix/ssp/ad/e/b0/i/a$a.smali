.class Lcom/ubix/ssp/ad/e/b0/i/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/b0/i/a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ubix/ssp/ad/e/b0/i/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/b0/i/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/i/a$a;->b:Lcom/ubix/ssp/ad/e/b0/i/a;

    iput p2, p0, Lcom/ubix/ssp/ad/e/b0/i/a$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/ubix/ssp/ad/e/b0/i/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/i/a$a;->b:Lcom/ubix/ssp/ad/e/b0/i/a;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/i/a;->c()Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/i/a$a;->b:Lcom/ubix/ssp/ad/e/b0/i/a;

    iget v1, p0, Lcom/ubix/ssp/ad/e/b0/i/a$a;->a:I

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/b0/i/a;->a(I)V

    return-void
.end method
