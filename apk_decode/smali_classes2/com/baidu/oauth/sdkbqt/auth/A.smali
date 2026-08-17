.class public Lcom/baidu/oauth/sdkbqt/auth/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/webkit/JsPromptResult;

.field public final synthetic d:[Ljava/lang/String;

.field public final synthetic e:Lcom/baidu/oauth/sdkbqt/auth/y;


# direct methods
.method public constructor <init>(Lcom/baidu/oauth/sdkbqt/auth/y;Ljava/lang/String;Landroid/webkit/JsPromptResult;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/A;->e:Lcom/baidu/oauth/sdkbqt/auth/y;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/A;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/baidu/oauth/sdkbqt/auth/A;->c:Landroid/webkit/JsPromptResult;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/baidu/oauth/sdkbqt/auth/A;->d:[Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/A;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/baidu/oauth/sdkbqt/auth/i$e;->a(Ljava/lang/String;)Lcom/baidu/oauth/sdkbqt/auth/i$e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/baidu/oauth/sdkbqt/auth/i$e;->b()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "oauth_sso_hash"

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    iget-object v3, p0, Lcom/baidu/oauth/sdkbqt/auth/A;->e:Lcom/baidu/oauth/sdkbqt/auth/y;

    .line 22
    .line 23
    iget-object v3, v3, Lcom/baidu/oauth/sdkbqt/auth/y;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 24
    .line 25
    iget-object v4, p0, Lcom/baidu/oauth/sdkbqt/auth/A;->c:Landroid/webkit/JsPromptResult;

    .line 26
    .line 27
    invoke-static {v3, v4}, Lcom/baidu/oauth/sdkbqt/auth/i;->a(Lcom/baidu/oauth/sdkbqt/auth/i;Landroid/webkit/JsPromptResult;)Landroid/webkit/JsPromptResult;

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v4, 0x0

    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    iget-object v3, p0, Lcom/baidu/oauth/sdkbqt/auth/A;->e:Lcom/baidu/oauth/sdkbqt/auth/y;

    .line 38
    .line 39
    iget-object v3, v3, Lcom/baidu/oauth/sdkbqt/auth/y;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 40
    .line 41
    invoke-static {v3}, Lcom/baidu/oauth/sdkbqt/auth/i;->O(Lcom/baidu/oauth/sdkbqt/auth/i;)Ljava/util/Map;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    iget-object v3, p0, Lcom/baidu/oauth/sdkbqt/auth/A;->d:[Ljava/lang/String;

    .line 52
    .line 53
    iget-object v5, p0, Lcom/baidu/oauth/sdkbqt/auth/A;->e:Lcom/baidu/oauth/sdkbqt/auth/y;

    .line 54
    .line 55
    iget-object v5, v5, Lcom/baidu/oauth/sdkbqt/auth/y;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 56
    .line 57
    invoke-static {v5}, Lcom/baidu/oauth/sdkbqt/auth/i;->O(Lcom/baidu/oauth/sdkbqt/auth/i;)Ljava/util/Map;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Lcom/baidu/oauth/sdkbqt/auth/i$a;

    .line 66
    .line 67
    invoke-virtual {v5, v0}, Lcom/baidu/oauth/sdkbqt/auth/i$a;->a(Lcom/baidu/oauth/sdkbqt/auth/i$e;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    aput-object v5, v3, v4

    .line 72
    .line 73
    :cond_1
    invoke-virtual {v0}, Lcom/baidu/oauth/sdkbqt/auth/i$e;->c()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    const/4 v5, 0x2

    .line 82
    if-le v3, v5, :cond_2

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/baidu/oauth/sdkbqt/auth/i$e;->c()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string v3, "prompt_on_cancel"

    .line 93
    .line 94
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/A;->c:Landroid/webkit/JsPromptResult;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_3

    .line 111
    .line 112
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/A;->c:Landroid/webkit/JsPromptResult;

    .line 113
    .line 114
    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/auth/A;->d:[Ljava/lang/String;

    .line 115
    .line 116
    aget-object v1, v1, v4

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_3
    return-void

    .line 122
    :cond_4
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/A;->c:Landroid/webkit/JsPromptResult;

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    .line 125
    .line 126
    .line 127
    return-void
.end method
