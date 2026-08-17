.class Lcom/ubix/ssp/ad/e/x/g$f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/x/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/ubix/ssp/ad/e/x/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ubix/ssp/ad/e/x/a<",
            "Lcom/ubix/ssp/ad/e/x/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field final synthetic d:Lcom/ubix/ssp/ad/e/x/g;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/x/g;Ljava/lang/String;Lcom/ubix/ssp/ad/e/x/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ubix/ssp/ad/e/x/a<",
            "Lcom/ubix/ssp/ad/e/x/d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/x/g$f;->d:Lcom/ubix/ssp/ad/e/x/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/ubix/ssp/ad/e/x/g$f;->c:I

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/x/g$f;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/x/g$f;->b:Lcom/ubix/ssp/ad/e/x/a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/ubix/ssp/ad/e/x/c;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/x/c;-><init>()V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/x/g$f;->a:Ljava/lang/String;

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/ubix/ssp/ad/e/x/c;->a(Ljava/lang/String;I)Lcom/ubix/ssp/ad/e/x/d;

    move-result-object v0

    iget v1, v0, Lcom/ubix/ssp/ad/e/x/d;->c:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/x/g$f;->b:Lcom/ubix/ssp/ad/e/x/a;

    invoke-virtual {v1, v0}, Lcom/ubix/ssp/ad/e/x/a;->d(Lcom/ubix/ssp/ad/e/x/d;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--------reward uploadAction retry  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ubix/ssp/ad/e/x/g$f;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/u;->c(Ljava/lang/String;)V

    iget v1, p0, Lcom/ubix/ssp/ad/e/x/g$f;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/ubix/ssp/ad/e/x/g$f;->c:I

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/x/g$f;->b:Lcom/ubix/ssp/ad/e/x/a;

    invoke-virtual {v1, v0}, Lcom/ubix/ssp/ad/e/x/a;->a(Lcom/ubix/ssp/ad/e/x/d;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/x/g$f;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/x/g$f;->b:Lcom/ubix/ssp/ad/e/x/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/x/a;->a(Lcom/ubix/ssp/ad/e/x/d;)V

    return-void
.end method
