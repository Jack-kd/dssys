.class Lcom/ubix/ssp/ad/e/z/g$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/z/g;->setData(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:J

.field final synthetic g:Lcom/ubix/ssp/ad/e/z/g;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/z/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/g$a;->g:Lcom/ubix/ssp/ad/e/z/g;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/z/g$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/z/g$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ubix/ssp/ad/e/z/g$a;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/ubix/ssp/ad/e/z/g$a;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/ubix/ssp/ad/e/z/g$a;->e:Ljava/lang/String;

    iput-wide p7, p0, Lcom/ubix/ssp/ad/e/z/g$a;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/g$a;->g:Lcom/ubix/ssp/ad/e/z/g;

    const v1, 0xe0a25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/g$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/z/g$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/z/g$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/z/g$a;->d:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_0

    move-object v4, v5

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4e28\u5907\u6848\u53f7:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ubix/ssp/ad/e/z/g$a;->d:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    iget-object v6, p0, Lcom/ubix/ssp/ad/e/z/g$a;->e:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v5

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u4e28\u9002\u7528\u5e74\u9f84:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/ubix/ssp/ad/e/z/g$a;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    iget-wide v7, p0, Lcom/ubix/ssp/ad/e/z/g$a;->f:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u4e28\u5e94\u7528\u5927\u5c0f:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/ubix/ssp/ad/e/z/g$a;->f:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_2
    move-object v11, v6

    move-object v6, v5

    move-object v5, v11

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\u5e94\u7528\u540d\u79f0:%s\u4e28\u5e94\u7528\u7248\u672c:%s\u4e28\u5f00\u53d1\u8005:%s%s%s%s\u4e28\u6743\u9650\u4e28\u9690\u79c1\u4e28\u529f\u80fd\u4ecb\u7ecd"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ubix/ssp/ad/e/f;

    invoke-direct {v2, v1}, Lcom/ubix/ssp/ad/e/f;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/ubix/ssp/ad/e/z/g$a$a;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/e/z/g$a$a;-><init>(Lcom/ubix/ssp/ad/e/z/g$a;)V

    invoke-virtual {v2, v1}, Lcom/ubix/ssp/ad/e/f;->a(Lcom/ubix/ssp/ad/e/z/h$b;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/g$a;->g:Lcom/ubix/ssp/ad/e/z/g;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/g$a;->g:Lcom/ubix/ssp/ad/e/z/g;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_3
    return-void
.end method
