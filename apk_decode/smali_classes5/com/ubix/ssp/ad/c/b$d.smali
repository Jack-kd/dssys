.class Lcom/ubix/ssp/ad/c/b$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/ubix/ssp/ad/c/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/c/b;I)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/c/b$d;->b:Lcom/ubix/ssp/ad/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/ubix/ssp/ad/c/b$d;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b$d;->b:Lcom/ubix/ssp/ad/c/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/c/b;->d(Lcom/ubix/ssp/ad/c/b;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run into RequestRunnable, refreshTime is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ubix/ssp/ad/c/b$d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b$d;->b:Lcom/ubix/ssp/ad/c/b;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/c/b;->a(Lcom/ubix/ssp/ad/c/b;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b$d;->b:Lcom/ubix/ssp/ad/c/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/c/b;->c(Lcom/ubix/ssp/ad/c/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/c/b;->m(I)V

    :cond_0
    return-void
.end method
