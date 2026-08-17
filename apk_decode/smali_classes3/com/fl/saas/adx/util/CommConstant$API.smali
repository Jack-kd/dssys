.class public Lcom/fl/saas/adx/util/CommConstant$API;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/adx/util/CommConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "API"
.end annotation


# static fields
.field public static final ApiVersion:Ljava/lang/String; = "4.4"

.field private static final HOST_INIT:Ljava/lang/String; = "https://dp.funlinkads.com/"

.field public static final NEW_API_BID:Ljava/lang/String; = "https://s.funlinkads.com/ad/ad"

.field public static final NEW_INIT:Ljava/lang/String; = "https://t.funlinkads.com/log/initialization"

.field public static final NEW_VIDEO_SERVER_VERIFY:Ljava/lang/String; = "https://s.funlinkads.com/server/serverVerify"

.field public static final REPORT_DP_EFFECT:Ljava/lang/String; = "https://t.funlinkads.com/log/dpEffect"

.field public static final REPORT_DP_URL:Ljava/lang/String; = "https://t.funlinkads.com/log/js_dpurl"

.field public static final REPORT_KEYWORD:Ljava/lang/String; = "https://t.funlinkads.com/log/ka_rep"

.field public static final URL_GET_DATA:Ljava/lang/String; = "https://dp.funlinkads.com/api/dp/content"

.field public static final URL_REQUEST:Ljava/lang/String; = "https://dp.funlinkads.com/api/dp/config"

.field public static final URL_WAKEUP_PLACES:Ljava/lang/String; = "https://s.funlinkads.com/ad/bgWakeUpPlaces"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
