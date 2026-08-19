.class final Lcom/kwad/components/core/innerEc/live/b/c/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/b/c/c;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic VA:Lcom/kwad/components/core/innerEc/live/b/c/c;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/b/c/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$2;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$2;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/c;->e(Lcom/kwad/components/core/innerEc/live/b/c/c;)Landroid/widget/EditText;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$2;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/c;->f(Lcom/kwad/components/core/innerEc/live/b/c/c;)Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "\u8bf4\u70b9\u4ec0\u4e48\u5427~"

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-static {p1, v0, v1}, Lcom/kwad/sdk/utils/ae;->c(Landroid/content/Context;Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$2;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/c;->h(Lcom/kwad/components/core/innerEc/live/b/c/c;)Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$2;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/kwad/components/core/innerEc/live/b/c/c;->g(Lcom/kwad/components/core/innerEc/live/b/c/c;)Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$a;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, p1, v1}, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b;->a(Ljava/lang/String;Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$a;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$2;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/kwad/components/core/innerEc/live/b/c/c;->sc()V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$2;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/c;->e(Lcom/kwad/components/core/innerEc/live/b/c/c;)Landroid/widget/EditText;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v0, ""

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$2;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/c;->i(Lcom/kwad/components/core/innerEc/live/b/c/c;)Landroid/view/ViewGroup;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const/16 v0, 0x8

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    return-void
.end method
