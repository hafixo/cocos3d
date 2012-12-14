/*
 * CC3DefaultByVarNames.vsh
 *
 * cocos3d 2.0.0
 * Author: Bill Hollings
 * Copyright (c) 2011-2012 The Brenwill Workshop Ltd. All rights reserved.
 * http://www.brenwill.com
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 * http://en.wikipedia.org/wiki/MIT_License
 */

/**
 * When running under OpenGL ES 2, this vertex shader is used as a default when a
 * CC3Material has not been assigned a specific GL shader program.
 *
 * CC3DefaultByVarNames.fsh is the fragment shader associated with this vertex shader.
 *
 * The semantics of the variables in this shader can be mapped using a CC3GLProgramSemanticsDelegateByVarNames.
 */
precision mediump float;

uniform mat4 u_mtxMVP;
uniform vec4 u_matDiffuseColor;

attribute highp vec4 a_position;
attribute vec2 a_texCoord;

varying vec2 v_texCoord;
varying lowp vec4 v_color;

void main() {
	v_color = u_matDiffuseColor;
	v_texCoord = a_texCoord;
	gl_Position = u_mtxMVP * a_position;
}

