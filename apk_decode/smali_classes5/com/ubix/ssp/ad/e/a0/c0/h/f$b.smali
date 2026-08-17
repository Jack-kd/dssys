.class Lcom/ubix/ssp/ad/e/a0/c0/h/f$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/a0/c0/h/f;->a(Lcom/ubix/ssp/ad/e/a0/c0/c;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/a0/c0/c;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ubix/ssp/ad/e/a0/c0/h/f;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/c0/h/f;Lcom/ubix/ssp/ad/e/a0/c0/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/f$b;->c:Lcom/ubix/ssp/ad/e/a0/c0/h/f;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/f$b;->a:Lcom/ubix/ssp/ad/e/a0/c0/c;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/f$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/f$b;->a:Lcom/ubix/ssp/ad/e/a0/c0/c;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/f$b;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/e/a0/c0/c;->a(Ljava/lang/String;)V

    return-void
.end method
