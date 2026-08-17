.class Lcom/ubix/ssp/ad/e/a0/c0/h/f$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/a0/c0/h/f;->a(Lcom/ubix/ssp/ad/e/a0/c0/c;Lcom/ubix/ssp/ad/e/a0/c0/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/a0/c0/c;

.field final synthetic b:Lcom/ubix/ssp/ad/e/a0/c0/e;

.field final synthetic c:Lcom/ubix/ssp/ad/e/a0/c0/h/f;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/c0/h/f;Lcom/ubix/ssp/ad/e/a0/c0/c;Lcom/ubix/ssp/ad/e/a0/c0/e;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/f$c;->c:Lcom/ubix/ssp/ad/e/a0/c0/h/f;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/f$c;->a:Lcom/ubix/ssp/ad/e/a0/c0/c;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/f$c;->b:Lcom/ubix/ssp/ad/e/a0/c0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/f$c;->a:Lcom/ubix/ssp/ad/e/a0/c0/c;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/f$c;->b:Lcom/ubix/ssp/ad/e/a0/c0/e;

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/e/a0/c0/c;->a(Ljava/lang/Exception;)V

    return-void
.end method
