.class public Lcom/kwad/components/core/innerEc/live/base/QLiveMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final AUTO_HISTORY_MESSAGE:I = 0x1

.field public static final MANUAL_HISTORY_MESSAGE:I = 0x2

.field public static final NOT_YET_DETERMINED:I = 0x0

.field private static final serialVersionUID:J = -0x46d597f1a9d3074fL


# instance fields
.field public content:Ljava/lang/String;

.field public enableKwaiEmoji:Z

.field public id:Ljava/lang/String;

.field public user:Lcom/kwad/components/core/innerEc/live/base/UserInfo;

.field public wealthGrade:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
