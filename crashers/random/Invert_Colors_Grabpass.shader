Shader "Custom/MyGrabPass" {
    Properties {
        _MainTex ("Base (RGB)", 2D) = "white" {}
    }
     SubShader {
        // Draw ourselves after all opaque geometry
        Tags { "Queue" = "Transparent" }
        // Grab the screen behind the object into _GrabTexture
        GrabPass { }
        // Render the object with the texture generated above, and invert it's colors
        Pass {
            SetTexture [_GrabTexture] { combine one-texture }
        }
    }
}