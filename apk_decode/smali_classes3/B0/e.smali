.class public LB0/e;
.super Lio/flutter/plugin/platform/PlatformViewFactory;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Lio/flutter/plugin/common/BinaryMessenger;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 1

    .line 1
    sget-object v0, Lio/flutter/plugin/common/StandardMessageCodec;->INSTANCE:Lio/flutter/plugin/common/StandardMessageCodec;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/PlatformViewFactory;-><init>(Lio/flutter/plugin/common/MessageCodec;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, LB0/e;->a:Landroid/app/Activity;

    .line 7
    .line 8
    iput-object p2, p0, LB0/e;->b:Lio/flutter/plugin/common/BinaryMessenger;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;ILjava/lang/Object;)Lio/flutter/plugin/platform/PlatformView;
    .locals 2

    .line 1
    check-cast p3, Ljava/util/Map;

    .line 2
    .line 3
    new-instance p1, LB0/d;

    .line 4
    .line 5
    iget-object v0, p0, LB0/e;->a:Landroid/app/Activity;

    .line 6
    .line 7
    iget-object v1, p0, LB0/e;->b:Lio/flutter/plugin/common/BinaryMessenger;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, p2, p3}, LB0/d;-><init>(Landroid/app/Activity;Lio/flutter/plugin/common/BinaryMessenger;ILjava/util/Map;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method
