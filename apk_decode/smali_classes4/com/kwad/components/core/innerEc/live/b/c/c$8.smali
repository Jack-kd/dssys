.class final Lcom/kwad/components/core/innerEc/live/b/c/c$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/core/innerEc/live/b/c/c;
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
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$8;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/innerEc/live/comment/sendcomment/LiveSendCommentResponse;Lcom/kwad/components/core/innerEc/live/base/b;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget v0, p1, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/LiveSendCommentResponse;->commentCode:I

    .line 4
    .line 5
    const v1, 0x37b6d

    .line 6
    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    if-eqz p1, :cond_2

    .line 12
    .line 13
    iget-object v0, p1, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/LiveSendCommentResponse;->commentId:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$8;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/c;->s(Lcom/kwad/components/core/innerEc/live/b/c/c;)Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "\u8bc4\u8bba\u6210\u529f"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/ae;->U(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$8;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/c;->o(Lcom/kwad/components/core/innerEc/live/b/c/c;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p1, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/LiveSendCommentResponse;->commentId:Ljava/lang/String;

    .line 40
    .line 41
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$8;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/c;->o(Lcom/kwad/components/core/innerEc/live/b/c/c;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object p1, p1, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/LiveSendCommentResponse;->commentId:Ljava/lang/String;

    .line 54
    .line 55
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$8;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 59
    .line 60
    new-instance v0, Lcom/kwad/components/core/innerEc/live/widget/c;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/c;->t(Lcom/kwad/components/core/innerEc/live/b/c/c;)Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$8;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 67
    .line 68
    iget-object p2, p2, Lcom/kwad/components/core/innerEc/live/base/b;->content:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v2}, Lcom/kwad/components/core/innerEc/live/b/c/c;->u(Lcom/kwad/components/core/innerEc/live/b/c/c;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-static {v2, p2, v3}, Lcom/kwad/components/core/innerEc/live/b/c/c;->a(Lcom/kwad/components/core/innerEc/live/b/c/c;Ljava/lang/String;Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/base/QLiveMessage;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-static {v1, p2}, Lcom/kwad/components/core/innerEc/live/comment/a;->a(Landroid/content/Context;Lcom/kwad/components/core/innerEc/live/base/QLiveMessage;)Ljava/lang/CharSequence;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-direct {v0, p2}, Lcom/kwad/components/core/innerEc/live/widget/c;-><init>(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    invoke-static {p1, v0}, Lcom/kwad/components/core/innerEc/live/b/c/c;->a(Lcom/kwad/components/core/innerEc/live/b/c/c;Lcom/kwad/components/core/innerEc/live/widget/c;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    :goto_0
    return-void
.end method
