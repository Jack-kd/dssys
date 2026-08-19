.class Lcom/ubix/ssp/ad/a$r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/a;->a(Ljava/util/HashMap;JZLandroid/graphics/Rect;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/a$r;->a:Lcom/ubix/ssp/ad/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$r;->a:Lcom/ubix/ssp/ad/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/a$r;->a:Lcom/ubix/ssp/ad/a;

    iget-object v2, v2, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/a$r;->a:Lcom/ubix/ssp/ad/a;

    invoke-static {v2}, Lcom/ubix/ssp/ad/a;->b(Lcom/ubix/ssp/ad/a;)J

    move-result-wide v2

    const-string v4, "ubix_sp_gold"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/ubix/ssp/ad/e/a0/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Boolean;

    return-void
.end method
