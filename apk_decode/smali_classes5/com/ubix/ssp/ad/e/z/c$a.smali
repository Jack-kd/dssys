.class Lcom/ubix/ssp/ad/e/z/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/z/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/z/c;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/z/c;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/c$a;->a:Lcom/ubix/ssp/ad/e/z/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/c$a;->a:Lcom/ubix/ssp/ad/e/z/c;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/z/c;->a(Lcom/ubix/ssp/ad/e/z/c;)Landroid/widget/TextView;

    move-result-object p1

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/c$a;->a:Lcom/ubix/ssp/ad/e/z/c;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/z/c;->a(Lcom/ubix/ssp/ad/e/z/c;)Landroid/widget/TextView;

    move-result-object p1

    const v0, -0x7c7c7d

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
