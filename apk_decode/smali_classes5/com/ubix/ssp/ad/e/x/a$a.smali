.class Lcom/ubix/ssp/ad/e/x/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/x/a;->a(Lcom/ubix/ssp/ad/e/x/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/x/d;

.field final synthetic b:Lcom/ubix/ssp/ad/e/x/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/x/a;Lcom/ubix/ssp/ad/e/x/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/x/a$a;->b:Lcom/ubix/ssp/ad/e/x/a;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/x/a$a;->a:Lcom/ubix/ssp/ad/e/x/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/x/a$a;->b:Lcom/ubix/ssp/ad/e/x/a;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/x/a$a;->a:Lcom/ubix/ssp/ad/e/x/d;

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/x/a;->b(Lcom/ubix/ssp/ad/e/x/d;)V

    return-void
.end method
