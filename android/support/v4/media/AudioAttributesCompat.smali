.class public Landroid/support/v4/media/AudioAttributesCompat;
.super Ljava/lang/Object;
.source "AudioAttributesCompat.java"

# interfaces
.implements Landroidx/versionedparcelable/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/AudioAttributesCompat$AttributeContentType;,
        Landroid/support/v4/media/AudioAttributesCompat$AttributeUsage;,
        Landroid/support/v4/media/AudioAttributesCompat$AudioManagerHidden;,
        Landroid/support/v4/media/AudioAttributesCompat$Builder;
    }
.end annotation


# static fields
.field static final AUDIO_ATTRIBUTES_CONTENT_TYPE:Ljava/lang/String; = "android.support.v4.media.audio_attrs.CONTENT_TYPE"

.field static final AUDIO_ATTRIBUTES_FLAGS:Ljava/lang/String; = "android.support.v4.media.audio_attrs.FLAGS"

.field static final AUDIO_ATTRIBUTES_FRAMEWORKS:Ljava/lang/String; = "android.support.v4.media.audio_attrs.FRAMEWORKS"

.field static final AUDIO_ATTRIBUTES_LEGACY_STREAM_TYPE:Ljava/lang/String; = "android.support.v4.media.audio_attrs.LEGACY_STREAM_TYPE"

.field static final AUDIO_ATTRIBUTES_USAGE:Ljava/lang/String; = "android.support.v4.media.audio_attrs.USAGE"

.field public static final CONTENT_TYPE_MOVIE:I = 0x3

.field public static final CONTENT_TYPE_MUSIC:I = 0x2

.field public static final CONTENT_TYPE_SONIFICATION:I = 0x4

.field public static final CONTENT_TYPE_SPEECH:I = 0x1

.field public static final CONTENT_TYPE_UNKNOWN:I = 0x0

.field static final FLAG_ALL:I = 0x3ff

.field static final FLAG_ALL_PUBLIC:I = 0x111

.field public static final FLAG_AUDIBILITY_ENFORCED:I = 0x1

.field static final FLAG_BEACON:I = 0x8

.field static final FLAG_BYPASS_INTERRUPTION_POLICY:I = 0x40

.field static final FLAG_BYPASS_MUTE:I = 0x80

.field static final FLAG_DEEP_BUFFER:I = 0x200

.field public static final FLAG_HW_AV_SYNC:I = 0x10

.field static final FLAG_HW_HOTWORD:I = 0x20

.field static final FLAG_LOW_LATENCY:I = 0x100

.field static final FLAG_SCO:I = 0x4

.field static final FLAG_SECURE:I = 0x2

.field static final INVALID_STREAM_TYPE:I = -0x1

.field private static final SDK_USAGES:[I

.field private static final SUPPRESSIBLE_CALL:I = 0x2

.field private static final SUPPRESSIBLE_NOTIFICATION:I = 0x1

.field private static final SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

.field private static final TAG:Ljava/lang/String; = "AudioAttributesCompat"

.field public static final USAGE_ALARM:I = 0x4

.field public static final USAGE_ASSISTANCE_ACCESSIBILITY:I = 0xb

.field public static final USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:I = 0xc

.field public static final USAGE_ASSISTANCE_SONIFICATION:I = 0xd

.field public static final USAGE_ASSISTANT:I = 0x10

.field public static final USAGE_GAME:I = 0xe

.field public static final USAGE_MEDIA:I = 0x1

.field public static final USAGE_NOTIFICATION:I = 0x5

.field public static final USAGE_NOTIFICATION_COMMUNICATION_DELAYED:I = 0x9

.field public static final USAGE_NOTIFICATION_COMMUNICATION_INSTANT:I = 0x8

.field public static final USAGE_NOTIFICATION_COMMUNICATION_REQUEST:I = 0x7

.field public static final USAGE_NOTIFICATION_EVENT:I = 0xa

.field public static final USAGE_NOTIFICATION_RINGTONE:I = 0x6

.field public static final USAGE_UNKNOWN:I = 0x0

.field private static final USAGE_VIRTUAL_SOURCE:I = 0xf

.field public static final USAGE_VOICE_COMMUNICATION:I = 0x2

.field public static final USAGE_VOICE_COMMUNICATION_SIGNALLING:I = 0x3

.field static sForceLegacyBehavior:Z


# instance fields
.field mImpl:Landroid/support/v4/media/AudioAttributesImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 175
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    .line 176
    sget-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 177
    sget-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 178
    sget-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 179
    sget-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 181
    sget-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 183
    sget-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x10

    .line 186
    new-array v0, v0, [I

    fill-array-data v0, :array_3a

    sput-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SDK_USAGES:[I

    return-void

    :array_3a
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/support/v4/media/AudioAttributesImpl;)V
    .registers 2

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object p1, p0, Landroid/support/v4/media/AudioAttributesCompat;->mImpl:Landroid/support/v4/media/AudioAttributesImpl;

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/AudioAttributesCompat;
    .registers 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 360
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 361
    invoke-static {p0}, Landroid/support/v4/media/AudioAttributesImplApi21;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/AudioAttributesImpl;

    move-result-object p0

    goto :goto_f

    .line 363
    :cond_b
    invoke-static {p0}, Landroid/support/v4/media/AudioAttributesImplBase;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/AudioAttributesImpl;

    move-result-object p0

    :goto_f
    if-nez p0, :cond_13

    const/4 p0, 0x0

    goto :goto_19

    .line 365
    :cond_13
    new-instance v0, Landroid/support/v4/media/AudioAttributesCompat;

    invoke-direct {v0, p0}, Landroid/support/v4/media/AudioAttributesCompat;-><init>(Landroid/support/v4/media/AudioAttributesImpl;)V

    move-object p0, v0

    :goto_19
    return-object p0
.end method

.method public static setForceLegacyBehavior(Z)V
    .registers 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 698
    sput-boolean p0, Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    return-void
.end method

.method static toVolumeStreamType(ZII)I
    .registers 6

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    if-eqz p0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x7

    :goto_9
    return v1

    :cond_a
    const/4 v0, 0x4

    and-int/2addr p1, v0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_14

    if-eqz p0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v2, 0x6

    :goto_13
    return v2

    :cond_14
    const/4 p1, 0x3

    packed-switch p2, :pswitch_data_4e

    :pswitch_18  #0xf
    if-eqz p0, :cond_4c

    .line 756
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown usage value "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " in audio attributes"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_36  #0xd
    return v1

    :pswitch_37  #0xb
    const/16 p0, 0xa

    return p0

    :pswitch_3a  #0x6
    const/4 p0, 0x2

    return p0

    :pswitch_3c  #0x5, 0x7, 0x8, 0x9, 0xa
    const/4 p0, 0x5

    return p0

    :pswitch_3e  #0x4
    return v0

    :pswitch_3f  #0x3
    if-eqz p0, :cond_42

    goto :goto_44

    :cond_42
    const/16 v2, 0x8

    :goto_44
    return v2

    :pswitch_45  #0x2
    return v2

    :pswitch_46  #0x1, 0xc, 0xe, 0x10
    return p1

    :pswitch_47  #0x0
    if-eqz p0, :cond_4b

    const/high16 p1, -0x80000000

    :cond_4b
    return p1

    :cond_4c
    return p1

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_47  #00000000
        :pswitch_46  #00000001
        :pswitch_45  #00000002
        :pswitch_3f  #00000003
        :pswitch_3e  #00000004
        :pswitch_3c  #00000005
        :pswitch_3a  #00000006
        :pswitch_3c  #00000007
        :pswitch_3c  #00000008
        :pswitch_3c  #00000009
        :pswitch_3c  #0000000a
        :pswitch_37  #0000000b
        :pswitch_46  #0000000c
        :pswitch_36  #0000000d
        :pswitch_46  #0000000e
        :pswitch_18  #0000000f
        :pswitch_46  #00000010
    .end packed-switch
.end method

.method static toVolumeStreamType(ZLandroid/support/v4/media/AudioAttributesCompat;)I
    .registers 3

    .line 702
    invoke-virtual {p1}, Landroid/support/v4/media/AudioAttributesCompat;->getFlags()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/media/AudioAttributesCompat;->getUsage()I

    move-result p1

    invoke-static {p0, v0, p1}, Landroid/support/v4/media/AudioAttributesCompat;->toVolumeStreamType(ZII)I

    move-result p0

    return p0
.end method

.method static usageForStreamType(I)I
    .registers 2

    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_18

    :pswitch_4  #0x9
    const/4 p0, 0x0

    return p0

    :pswitch_6  #0xa
    const/16 p0, 0xb

    return p0

    :pswitch_9  #0x8
    const/4 p0, 0x3

    return p0

    :pswitch_b  #0x6
    return v0

    :pswitch_c  #0x5
    const/4 p0, 0x5

    return p0

    :pswitch_e  #0x4
    const/4 p0, 0x4

    return p0

    :pswitch_10  #0x3
    const/4 p0, 0x1

    return p0

    :pswitch_12  #0x2
    const/4 p0, 0x6

    return p0

    :pswitch_14  #0x1, 0x7
    const/16 p0, 0xd

    return p0

    :pswitch_17  #0x0
    return v0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_17  #00000000
        :pswitch_14  #00000001
        :pswitch_12  #00000002
        :pswitch_10  #00000003
        :pswitch_e  #00000004
        :pswitch_c  #00000005
        :pswitch_b  #00000006
        :pswitch_14  #00000007
        :pswitch_9  #00000008
        :pswitch_4  #00000009
        :pswitch_6  #0000000a
    .end packed-switch
.end method

.method static usageToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_46

    .line 649
    :pswitch_3  #0xf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown usage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_15  #0x10
    const-string p0, "USAGE_ASSISTANT"

    return-object p0

    :pswitch_18  #0xe
    const-string p0, "USAGE_GAME"

    return-object p0

    :pswitch_1b  #0xd
    const-string p0, "USAGE_ASSISTANCE_SONIFICATION"

    return-object p0

    :pswitch_1e  #0xc
    const-string p0, "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE"

    return-object p0

    :pswitch_21  #0xb
    const-string p0, "USAGE_ASSISTANCE_ACCESSIBILITY"

    return-object p0

    :pswitch_24  #0xa
    const-string p0, "USAGE_NOTIFICATION_EVENT"

    return-object p0

    :pswitch_27  #0x9
    const-string p0, "USAGE_NOTIFICATION_COMMUNICATION_DELAYED"

    return-object p0

    :pswitch_2a  #0x8
    const-string p0, "USAGE_NOTIFICATION_COMMUNICATION_INSTANT"

    return-object p0

    :pswitch_2d  #0x7
    const-string p0, "USAGE_NOTIFICATION_COMMUNICATION_REQUEST"

    return-object p0

    :pswitch_30  #0x6
    const-string p0, "USAGE_NOTIFICATION_RINGTONE"

    return-object p0

    :pswitch_33  #0x5
    const-string p0, "USAGE_NOTIFICATION"

    return-object p0

    :pswitch_36  #0x4
    const-string p0, "USAGE_ALARM"

    return-object p0

    :pswitch_39  #0x3
    const-string p0, "USAGE_VOICE_COMMUNICATION_SIGNALLING"

    return-object p0

    :pswitch_3c  #0x2
    const-string p0, "USAGE_VOICE_COMMUNICATION"

    return-object p0

    :pswitch_3f  #0x1
    const-string p0, "USAGE_MEDIA"

    return-object p0

    :pswitch_42  #0x0
    const-string p0, "USAGE_UNKNOWN"

    return-object p0

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_42  #00000000
        :pswitch_3f  #00000001
        :pswitch_3c  #00000002
        :pswitch_39  #00000003
        :pswitch_36  #00000004
        :pswitch_33  #00000005
        :pswitch_30  #00000006
        :pswitch_2d  #00000007
        :pswitch_2a  #00000008
        :pswitch_27  #00000009
        :pswitch_24  #0000000a
        :pswitch_21  #0000000b
        :pswitch_1e  #0000000c
        :pswitch_1b  #0000000d
        :pswitch_18  #0000000e
        :pswitch_3  #0000000f
        :pswitch_15  #00000010
    .end packed-switch
.end method

.method public static wrap(Ljava/lang/Object;)Landroid/support/v4/media/AudioAttributesCompat;
    .registers 3
    .param p0  # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 307
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_19

    sget-boolean v0, Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    if-nez v0, :cond_19

    .line 308
    new-instance v0, Landroid/support/v4/media/AudioAttributesImplApi21;

    check-cast p0, Landroid/media/AudioAttributes;

    invoke-direct {v0, p0}, Landroid/support/v4/media/AudioAttributesImplApi21;-><init>(Landroid/media/AudioAttributes;)V

    .line 310
    new-instance p0, Landroid/support/v4/media/AudioAttributesCompat;

    invoke-direct {p0}, Landroid/support/v4/media/AudioAttributesCompat;-><init>()V

    .line 311
    iput-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mImpl:Landroid/support/v4/media/AudioAttributesImpl;

    return-object p0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 766
    instance-of v0, p1, Landroid/support/v4/media/AudioAttributesCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 769
    :cond_6
    check-cast p1, Landroid/support/v4/media/AudioAttributesCompat;

    .line 770
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mImpl:Landroid/support/v4/media/AudioAttributesImpl;

    if-nez v0, :cond_12

    .line 771
    iget-object p1, p1, Landroid/support/v4/media/AudioAttributesCompat;->mImpl:Landroid/support/v4/media/AudioAttributesImpl;

    if-nez p1, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1

    .line 773
    :cond_12
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mImpl:Landroid/support/v4/media/AudioAttributesImpl;

    iget-object p1, p1, Landroid/support/v4/media/AudioAttributesCompat;->mImpl:Landroid/support/v4/media/AudioAttributesImpl;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getContentType()I
    .registers 2

    .line 325
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mImpl:Landroid/support/v4/media/AudioAttributesImpl;

    invoke-interface {v0}, Landroid/support/v4/media/AudioAttributesImpl;->getContentType()I

    move-result v0

    return v0
.end method

.method public getFlags()I
    .registers 2

    .line 343
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mImpl:Landroid/support/v4/media/AudioAttributesImpl;

    invoke-interface {v0}, Landroid/support/v4/media/AudioAttributesImpl;->getFlags()I

    move-result v0

    return v0
.end method

.method public getLegacyStreamType()I
    .registers 2

    .line 296
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mImpl:Landroid/support/v4/media/AudioAttributesImpl;

    invoke-interface {v0}, Landroid/support/v4/media/AudioAttributesImpl;->getLegacyStreamType()I

    move-result v0

    return v0
.end method

.method getRawLegacyStreamType()I
    .registers 2

    .line 706
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mImpl:Landroid/support/v4/media/AudioAttributesImpl;

    invoke-interface {v0}, Landroid/support/v4/media/AudioAttributesImpl;->getRawLegacyStreamType()I

    move-result v0

    return v0
.end method

.method public getUsage()I
    .registers 2

    .line 334
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mImpl:Landroid/support/v4/media/AudioAttributesImpl;

    invoke-interface {v0}, Landroid/support/v4/media/AudioAttributesImpl;->getUsage()I

    move-result v0

    return v0
.end method

.method public getVolumeControlStream()I
    .registers 2

    .line 273
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mImpl:Landroid/support/v4/media/AudioAttributesImpl;

    invoke-interface {v0}, Landroid/support/v4/media/AudioAttributesImpl;->getVolumeControlStream()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 606
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mImpl:Landroid/support/v4/media/AudioAttributesImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 351
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mImpl:Landroid/support/v4/media/AudioAttributesImpl;

    invoke-interface {v0}, Landroid/support/v4/media/AudioAttributesImpl;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 611
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mImpl:Landroid/support/v4/media/AudioAttributesImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap()Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 286
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mImpl:Landroid/support/v4/media/AudioAttributesImpl;

    invoke-interface {v0}, Landroid/support/v4/media/AudioAttributesImpl;->getAudioAttributes()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
