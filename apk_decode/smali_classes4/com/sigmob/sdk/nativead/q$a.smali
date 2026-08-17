.class Lcom/sigmob/sdk/nativead/q$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/nativead/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/nativead/q;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/nativead/q;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/q$a;->a:Lcom/sigmob/sdk/nativead/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/q$a;->a:Lcom/sigmob/sdk/nativead/q;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/q;->a(Lcom/sigmob/sdk/nativead/q;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p1, Lcom/sigmob/sdk/nativead/q$b;

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/q$a;->a:Lcom/sigmob/sdk/nativead/q;

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/q;->getSelectedItem()Lcom/sigmob/sdk/nativead/q$b;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/q$a;->a:Lcom/sigmob/sdk/nativead/q;

    invoke-static {v1}, Lcom/sigmob/sdk/nativead/q;->b(Lcom/sigmob/sdk/nativead/q;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/nativead/q$b;->a(Z)V

    :cond_0
    invoke-virtual {p1, v3}, Lcom/sigmob/sdk/nativead/q$b;->a(Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/q$a;->a:Lcom/sigmob/sdk/nativead/q;

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/q;->getSelectedIndex()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/sigmob/sdk/nativead/q$b;->a(Lcom/sigmob/sdk/nativead/q$b;)Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/nativead/q$b;->a(Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/q$a;->a:Lcom/sigmob/sdk/nativead/q;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/q$a;->a:Lcom/sigmob/sdk/nativead/q;

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/nativead/q;->b(I)Lcom/sigmob/sdk/nativead/q$b;

    move-result-object v1

    if-ne v1, p1, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    :goto_1
    iget-object v1, p0, Lcom/sigmob/sdk/nativead/q$a;->a:Lcom/sigmob/sdk/nativead/q;

    invoke-static {v1}, Lcom/sigmob/sdk/nativead/q;->c(Lcom/sigmob/sdk/nativead/q;)Lcom/sigmob/sdk/nativead/q$e;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/q$a;->a:Lcom/sigmob/sdk/nativead/q;

    invoke-static {v1}, Lcom/sigmob/sdk/nativead/q;->c(Lcom/sigmob/sdk/nativead/q;)Lcom/sigmob/sdk/nativead/q$e;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/sigmob/sdk/nativead/q$e;->onItemClick(ILjava/lang/String;)V

    :cond_4
    return-void
.end method
