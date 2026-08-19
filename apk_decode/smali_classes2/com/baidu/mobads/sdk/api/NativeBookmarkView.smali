.class public Lcom/baidu/mobads/sdk/api/NativeBookmarkView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobads/sdk/api/NativeBookmarkView$NativeEvent;,
        Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;,
        Lcom/baidu/mobads/sdk/api/NativeBookmarkView$EnterDirection;
    }
.end annotation


# instance fields
.field private bookmarkView:Landroid/view/View;

.field private controller:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

.field private final nativeResponse:Lcom/baidu/mobads/sdk/api/NativeResponse;

.field private final params:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/baidu/mobads/sdk/api/NativeResponse;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/baidu/mobads/sdk/api/NativeBookmarkView;->params:Lorg/json/JSONObject;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/baidu/mobads/sdk/api/NativeBookmarkView;->nativeResponse:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 12
    .line 13
    const-string p1, "type"

    .line 14
    .line 15
    const-string v0, "template"

    .line 16
    .line 17
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobads/sdk/api/NativeBookmarkView;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const-string p1, "w"

    .line 21
    .line 22
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobads/sdk/api/NativeBookmarkView;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const-string p1, "h"

    .line 30
    .line 31
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobads/sdk/api/NativeBookmarkView;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/NativeBookmarkView;->params:Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/baidu/mobads/sdk/internal/az;->b(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public bottomCardColor(Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/NativeBookmarkView;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, "bottom_card_color"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/baidu/mobads/sdk/api/NativeBookmarkView;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public closeListener(Lcom/baidu/mobads/sdk/api/NativeResponse$AdCloseListener;)Lcom/baidu/mobads/sdk/api/NativeBookmarkView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/NativeBookmarkView;->nativeResponse:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/baidu/mobads/sdk/api/XAdNativeResponse;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/baidu/mobads/sdk/api/XAdNativeResponse;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/api/XAdNativeResponse;->setAdCloseListener(Lcom/baidu/mobads/sdk/api/NativeResponse$AdCloseListener;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-object p0
.end method

.method public dislikeListener(Lcom/baidu/mobads/sdk/api/NativeResponse$AdDislikeListener;)Lcom/baidu/mobads/sdk/api/NativeBookmarkView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/NativeBookmarkView;->nativeResponse:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/baidu/mobads/sdk/api/XAdNativeResponse;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/baidu/mobads/sdk/api/XAdNativeResponse;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/api/XAdNativeResponse;->setAdDislikeListener(Lcom/baidu/mobads/sdk/api/NativeResponse$AdDislikeListener;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-object p0
.end method

.method public getNativeResponse()Lcom/baidu/mobads/sdk/api/NativeResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/NativeBookmarkView;->nativeResponse:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/NativeBookmarkView;->bookmarkView:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public hideAdLogo(Z)Lcom/baidu/mobads/sdk/api/NativeBookmarkView;
    .locals 1

    .line 1
    const-string v0, "hide_ad_logo"

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/baidu/mobads/sdk/api/NativeBookmarkView;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public hideDislike(Z)Lcom/baidu/mobads/sdk/api/NativeBookmarkView;
    .locals 1

    .line 1
    const-string v0, "hide_dislike"

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/baidu/mobads/sdk/api/NativeBookmarkView;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public hideMuteButton(Z)Lcom/baidu/mobads/sdk/api/NativeBookmarkView;
    .locals 1

    .line 1
    const-string v0, "hide_mute"

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/baidu/mobads/sdk/api/NativeBookmarkView;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public mute(Z)Lcom/baidu/mobads/sdk/api/NativeBookmarkView;
    .locals 1

    .line 1
    const-string v0, "mute"

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/baidu/mobads/sdk/api/NativeBookmarkView;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public regionClick(Z)Lcom/baidu/mobads/sdk/api/NativeBookmarkView;
    .locals 1

    .line 1
    const-string v0, "region_click"

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/baidu/mobads/sdk/api/NativeBookmarkView;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public render()Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/NativeBookmarkView;->nativeResponse:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    instance-of v0, v0, Lcom/baidu/mobads/sdk/api/XAdNativeResponse;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/NativeBookmarkView;->nativeResponse:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 13
    .line 14
    check-cast v1, Lcom/baidu/mobads/sdk/api/XAdNativeResponse;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/NativeBookmarkView;->params:Lorg/json/JSONObject;

    .line 17
    .line 18
    const-string v3, "bookmark"

    .line 19
    .line 20
    invoke-virtual {v1, v3, v2, v0}, Lcom/baidu/mobads/sdk/api/XAdNativeResponse;->renderNativeView(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "controller"

    .line 28
    .line 29
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    instance-of v2, v0, Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    check-cast v0, Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/baidu/mobads/sdk/api/NativeBookmarkView;->controller:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 40
    .line 41
    :cond_0
    instance-of v0, v1, Landroid/view/View;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    check-cast v1, Landroid/view/View;

    .line 46
    .line 47
    iput-object v1, p0, Lcom/baidu/mobads/sdk/api/NativeBookmarkView;->bookmarkView:Landroid/view/View;

    .line 48
    .line 49
    return-object v1

    .line 50
    :cond_1
    const/4 v0, 0x0

    .line 51
    return-object v0
.end method

.method public setBookmarkColor(Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/NativeBookmarkView;->controller:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/baidu/mobads/sdk/api/NativeBookmarkView$NativeEvent;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;->access$100(Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v3, ","

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;->access$200(Lcom/baidu/mobads/sdk/api/NativeBookmarkView$BookmarkColor;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v2, "setBookmarkColor"

    .line 38
    .line 39
    invoke-direct {v1, v2, p1}, Lcom/baidu/mobads/sdk/api/NativeBookmarkView$NativeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v1}, Lcom/baidu/mobads/sdk/api/IOAdEventListener;->run(Lcom/baidu/mobads/sdk/api/IOAdEvent;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public startAnim(Lcom/baidu/mobads/sdk/api/NativeBookmarkView$EnterDirection;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/NativeBookmarkView;->controller:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/baidu/mobads/sdk/api/NativeBookmarkView$NativeEvent;

    .line 8
    .line 9
    const-string v2, "startAnimation"

    .line 10
    .line 11
    invoke-static {p1}, Lcom/baidu/mobads/sdk/api/NativeBookmarkView$EnterDirection;->access$000(Lcom/baidu/mobads/sdk/api/NativeBookmarkView$EnterDirection;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v1, v2, p1}, Lcom/baidu/mobads/sdk/api/NativeBookmarkView$NativeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Lcom/baidu/mobads/sdk/api/IOAdEventListener;->run(Lcom/baidu/mobads/sdk/api/IOAdEvent;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
