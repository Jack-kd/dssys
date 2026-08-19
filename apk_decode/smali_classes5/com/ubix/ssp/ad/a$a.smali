.class Lcom/ubix/ssp/ad/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/f$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;ILjava/util/HashMap;IIIZLcom/ubix/ssp/ad/g/c;Lcom/ubix/ssp/ad/g/h;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/ubix/ssp/ad/d/a;

.field final synthetic c:Lcom/ubix/ssp/ad/g/c;

.field final synthetic d:Ljava/util/HashMap;

.field final synthetic e:Lcom/ubix/ssp/ad/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/a;ZLcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/g/c;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/a$a;->e:Lcom/ubix/ssp/ad/a;

    iput-boolean p2, p0, Lcom/ubix/ssp/ad/a$a;->a:Z

    iput-object p3, p0, Lcom/ubix/ssp/ad/a$a;->b:Lcom/ubix/ssp/ad/d/a;

    iput-object p4, p0, Lcom/ubix/ssp/ad/a$a;->c:Lcom/ubix/ssp/ad/g/c;

    iput-object p5, p0, Lcom/ubix/ssp/ad/a$a;->d:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/a$a;->a:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$a;->e:Lcom/ubix/ssp/ad/a;

    iget-object v2, p0, Lcom/ubix/ssp/ad/a$a;->b:Lcom/ubix/ssp/ad/d/a;

    iget-object v3, p0, Lcom/ubix/ssp/ad/a$a;->c:Lcom/ubix/ssp/ad/g/c;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/ubix/ssp/ad/a$a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1, v3}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;ZLjava/util/HashMap;)Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method
