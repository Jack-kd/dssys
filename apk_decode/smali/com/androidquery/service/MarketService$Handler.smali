.class Lcom/androidquery/service/MarketService$Handler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/Html$TagHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidquery/service/MarketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidquery/service/MarketService;


# direct methods
.method private constructor <init>(Lcom/androidquery/service/MarketService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/androidquery/service/MarketService;Lcom/androidquery/service/MarketService$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/androidquery/service/MarketService$Handler;-><init>(Lcom/androidquery/service/MarketService;)V

    return-void
.end method

.method private cb(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/androidquery/service/MarketService;->access$500(Lcom/androidquery/service/MarketService;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Lcom/androidquery/service/MarketService;->access$502(Lcom/androidquery/service/MarketService;Z)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {v0, v1}, Lcom/androidquery/service/MarketService;->access$302(Lcom/androidquery/service/MarketService;I)I

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    .line 22
    .line 23
    invoke-virtual {v0, p1, p2, p3}, Lcom/androidquery/service/MarketService;->callback(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public detailCb(Ljava/lang/String;Ljava/lang/String;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/16 p3, 0x3e8

    .line 8
    .line 9
    if-le p1, p3, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/androidquery/service/MarketService;->access$600(Lcom/androidquery/service/MarketService;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance p3, Lcom/androidquery/callback/AjaxCallback;

    .line 18
    .line 19
    invoke-direct {p3}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    .line 27
    .line 28
    const-class v0, Lorg/json/JSONObject;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    .line 35
    .line 36
    const-string v0, "marketCb"

    .line 37
    .line 38
    invoke-virtual {p1, p0, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->handler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const-string p1, "html"

    .line 42
    .line 43
    invoke-virtual {p3, p1, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->param(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/androidquery/service/MarketService;->access$400(Lcom/androidquery/service/MarketService;)Lcom/androidquery/AQuery;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object p2, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    .line 53
    .line 54
    invoke-static {p2}, Lcom/androidquery/service/MarketService;->access$300(Lcom/androidquery/service/MarketService;)I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    invoke-virtual {p1, p2}, Lcom/androidquery/AbstractAQuery;->progress(I)Lcom/androidquery/AbstractAQuery;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/androidquery/AQuery;

    .line 63
    .line 64
    invoke-virtual {p1, p3}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void
.end method

.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .locals 0

    .line 1
    const-string p4, "li"

    .line 2
    .line 3
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string p1, "  "

    .line 12
    .line 13
    invoke-interface {p3, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 14
    .line 15
    .line 16
    const-string p2, "\u2022"

    .line 17
    .line 18
    invoke-interface {p3, p2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 19
    .line 20
    .line 21
    invoke-interface {p3, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const-string p1, "\n"

    .line 26
    .line 27
    invoke-interface {p3, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public marketCb(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/androidquery/service/MarketService;->access$100(Lcom/androidquery/service/MarketService;)Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    if-eqz p2, :cond_5

    .line 15
    .line 16
    const-string v0, "status"

    .line 17
    .line 18
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "1"

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    const-string v0, "dialog"

    .line 31
    .line 32
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/androidquery/service/MarketService$Handler;->cb(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object p1, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/androidquery/service/MarketService;->access$200(Lcom/androidquery/service/MarketService;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    const-string p1, "fetch"

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getSource()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    const/4 p3, 0x1

    .line 63
    if-ne p1, p3, :cond_2

    .line 64
    .line 65
    iget-object p1, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    .line 66
    .line 67
    invoke-static {p1, p3}, Lcom/androidquery/service/MarketService;->access$202(Lcom/androidquery/service/MarketService;Z)Z

    .line 68
    .line 69
    .line 70
    const-string p1, "marketUrl"

    .line 71
    .line 72
    const/4 p3, 0x0

    .line 73
    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-instance p2, Lcom/androidquery/callback/AjaxCallback;

    .line 78
    .line 79
    invoke-direct {p2}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    .line 87
    .line 88
    const-class p3, Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p1, p3}, Lcom/androidquery/callback/AbstractAjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    .line 95
    .line 96
    const-string p3, "detailCb"

    .line 97
    .line 98
    invoke-virtual {p1, p0, p3}, Lcom/androidquery/callback/AbstractAjaxCallback;->handler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    .line 102
    .line 103
    invoke-static {p1}, Lcom/androidquery/service/MarketService;->access$400(Lcom/androidquery/service/MarketService;)Lcom/androidquery/AQuery;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iget-object p3, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    .line 108
    .line 109
    invoke-static {p3}, Lcom/androidquery/service/MarketService;->access$300(Lcom/androidquery/service/MarketService;)I

    .line 110
    .line 111
    .line 112
    move-result p3

    .line 113
    invoke-virtual {p1, p3}, Lcom/androidquery/AbstractAQuery;->progress(I)Lcom/androidquery/AbstractAQuery;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Lcom/androidquery/AQuery;

    .line 118
    .line 119
    invoke-virtual {p1, p2}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    .line 120
    .line 121
    .line 122
    :cond_2
    :goto_0
    return-void

    .line 123
    :cond_3
    const-string v1, "0"

    .line 124
    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_4

    .line 130
    .line 131
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->invalidate()Lcom/androidquery/callback/AjaxStatus;

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/androidquery/service/MarketService$Handler;->cb(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/androidquery/service/MarketService$Handler;->cb(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    const/4 p1, -0x3

    .line 2
    if-eq p2, p1, :cond_2

    .line 3
    .line 4
    const/4 p1, -0x2

    .line 5
    if-eq p2, p1, :cond_1

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    if-eq p2, p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/androidquery/service/MarketService;->access$100(Lcom/androidquery/service/MarketService;)Landroid/app/Activity;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p2, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    .line 18
    .line 19
    invoke-static {p2}, Lcom/androidquery/service/MarketService;->access$700(Lcom/androidquery/service/MarketService;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p1, p2}, Lcom/androidquery/service/MarketService;->access$800(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/androidquery/service/MarketService;->access$100(Lcom/androidquery/service/MarketService;)Landroid/app/Activity;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p2, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    .line 34
    .line 35
    invoke-static {p2}, Lcom/androidquery/service/MarketService;->access$900(Lcom/androidquery/service/MarketService;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-static {p1, p2}, Lcom/androidquery/service/MarketService;->access$800(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    iget-object p1, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/androidquery/service/MarketService;->access$100(Lcom/androidquery/service/MarketService;)Landroid/app/Activity;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object p2, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    .line 50
    .line 51
    invoke-static {p2}, Lcom/androidquery/service/MarketService;->access$1000(Lcom/androidquery/service/MarketService;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-static {p1, p2}, Lcom/androidquery/service/MarketService;->access$1100(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
